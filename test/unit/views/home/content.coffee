application = require 'application'

describe 'home content view', ->
  homeContentView = undefined

  beforeEach ->
    HomeContentView = window.require 'views/home/Content'
    homeContentView = new HomeContentView

  afterEach ->

  it 'has a class name', ->
    expect(homeContentView.className).to.not.equal undefined

  it 'has a template', ->
    expect(homeContentView.template).to.not.equal undefined
