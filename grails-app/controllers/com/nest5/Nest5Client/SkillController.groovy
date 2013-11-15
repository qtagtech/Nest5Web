package com.nest5.Nest5Client

import org.springframework.dao.DataIntegrityViolationException

class SkillController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [skillInstanceList: Skill.list(params), skillInstanceTotal: Skill.count()]
    }

    def create() {
        [skillInstance: new Skill(params)]
    }

    def save() {
        def skillInstance = new Skill(params)
        if (!skillInstance.save(flush: true)) {
            render(view: "create", model: [skillInstance: skillInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'skill.label', default: 'Skill'), skillInstance.id])
        redirect(action: "show", id: skillInstance.id)
    }

    def show(Long id) {
        def skillInstance = Skill.get(id)
        if (!skillInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'skill.label', default: 'Skill'), id])
            redirect(action: "list")
            return
        }

        [skillInstance: skillInstance]
    }

    def edit(Long id) {
        def skillInstance = Skill.get(id)
        if (!skillInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'skill.label', default: 'Skill'), id])
            redirect(action: "list")
            return
        }

        [skillInstance: skillInstance]
    }

    def update(Long id, Long version) {
        def skillInstance = Skill.get(id)
        if (!skillInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'skill.label', default: 'Skill'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (skillInstance.version > version) {
                skillInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'skill.label', default: 'Skill')] as Object[],
                        "Another user has updated this Skill while you were editing")
                render(view: "edit", model: [skillInstance: skillInstance])
                return
            }
        }

        skillInstance.properties = params

        if (!skillInstance.save(flush: true)) {
            render(view: "edit", model: [skillInstance: skillInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'skill.label', default: 'Skill'), skillInstance.id])
        redirect(action: "show", id: skillInstance.id)
    }

    def delete(Long id) {
        def skillInstance = Skill.get(id)
        if (!skillInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'skill.label', default: 'Skill'), id])
            redirect(action: "list")
            return
        }

        try {
            skillInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'skill.label', default: 'Skill'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'skill.label', default: 'Skill'), id])
            redirect(action: "show", id: id)
        }
    }
}
