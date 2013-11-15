package com.nest5.Nest5Client



import org.junit.*
import grails.test.mixin.*

@TestFor(UniverseController)
@Mock(Universe)
class UniverseControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/universe/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.universeInstanceList.size() == 0
        assert model.universeInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.universeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.universeInstance != null
        assert view == '/universe/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/universe/show/1'
        assert controller.flash.message != null
        assert Universe.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/universe/list'

        populateValidParams(params)
        def universe = new Universe(params)

        assert universe.save() != null

        params.id = universe.id

        def model = controller.show()

        assert model.universeInstance == universe
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/universe/list'

        populateValidParams(params)
        def universe = new Universe(params)

        assert universe.save() != null

        params.id = universe.id

        def model = controller.edit()

        assert model.universeInstance == universe
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/universe/list'

        response.reset()

        populateValidParams(params)
        def universe = new Universe(params)

        assert universe.save() != null

        // test invalid parameters in update
        params.id = universe.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/universe/edit"
        assert model.universeInstance != null

        universe.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/universe/show/$universe.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        universe.clearErrors()

        populateValidParams(params)
        params.id = universe.id
        params.version = -1
        controller.update()

        assert view == "/universe/edit"
        assert model.universeInstance != null
        assert model.universeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/universe/list'

        response.reset()

        populateValidParams(params)
        def universe = new Universe(params)

        assert universe.save() != null
        assert Universe.count() == 1

        params.id = universe.id

        controller.delete()

        assert Universe.count() == 0
        assert Universe.get(universe.id) == null
        assert response.redirectedUrl == '/universe/list'
    }
}
