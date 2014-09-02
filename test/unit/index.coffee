application = window.require 'application'

describe 'index', ->
  index = undefined

  beforeEach ->
    sinon.stub application, 'start'
    sinon.stub Backbone.history, 'start'

    index = window.require 'index'

  afterEach ->
    application.start.restore()
    Backbone.history.start.restore()

  it 'calls `start` on application', ->
    expect(application.start.called).to.equal true

  it 'starts backbone history with push state disabled', ->
    application.trigger 'start', {}

    expect(Backbone.history.start.called).to.equal true
