describe 'home controllers', ->
  homeController = undefined

  beforeEach ->
    homeController = window.require 'controllers/home'

  it 'defines #defaultRoute', ->
    expect(homeController.defaultRoute).to.not.equal undefined
