package com.nest5.Nest5Client



import org.junit.*
import grails.test.mixin.*

@TestFor(IconController)
@Mock(Icon)
class IconControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/icon/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.iconInstanceList.size() == 0
        assert model.iconInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.iconInstance != null
    }

    void testSave() {
        controller.save()

        assert model.iconInstance != null
        assert view == '/icon/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/icon/show/1'
        assert controller.flash.message != null
        assert Icon.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/icon/list'

        populateValidParams(params)
        def icon = new Icon(params)

        assert icon.save() != null

        params.id = icon.id

        def model = controller.show()

        assert model.iconInstance == icon
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/icon/list'

        populateValidParams(params)
        def icon = new Icon(params)

        assert icon.save() != null

        params.id = icon.id

        def model = controller.edit()

        assert model.iconInstance == icon
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/icon/list'

        response.reset()

        populateValidParams(params)
        def icon = new Icon(params)

        assert icon.save() != null

        // test invalid parameters in update
        params.id = icon.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/icon/edit"
        assert model.iconInstance != null

        icon.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/icon/show/$icon.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        icon.clearErrors()

        populateValidParams(params)
        params.id = icon.id
        params.version = -1
        controller.update()

        assert view == "/icon/edit"
        assert model.iconInstance != null
        assert model.iconInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/icon/list'

        response.reset()

        populateValidParams(params)
        def icon = new Icon(params)

        assert icon.save() != null
        assert Icon.count() == 1

        params.id = icon.id

        controller.delete()

        assert Icon.count() == 0
        assert Icon.get(icon.id) == null
        assert response.redirectedUrl == '/icon/list'
    }
}
