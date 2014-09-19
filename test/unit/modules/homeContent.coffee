application = require 'application'

describe 'home content module', ->
  homeContentModule = undefined

  beforeEach ->
    homeContentModule = window.require 'modules/homeContent'

  it 'has #display method', ->
    expect(application.homeContentModule.display).to.not.equal undefined
