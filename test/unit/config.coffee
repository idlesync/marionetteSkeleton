describe 'config', ->
  config = undefined

  beforeEach ->
    config = window.require 'config'

  afterEach ->

  it 'has `someSetting`', ->
    expect(config.someSetting).to.not.equal undefined
