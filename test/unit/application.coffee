describe 'application', ->
  application = undefined

  beforeEach ->
    sinon.spy window, 'require'

    application = window.require 'application'

  afterEach ->
    window.require.restore()

  it 'loads home router in initializer', ->
    application.start()

    expect(window.require.withArgs('routers/home').called).to.equal true

  describe 'regions', ->
    it 'has `content`', ->
      expect(application.getRegion('contentRegion')).to.not.equal undefined
