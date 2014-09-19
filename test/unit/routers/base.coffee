application = require 'application'

describe 'base router', ->
  BaseRouter = undefined
  baseRouter = undefined

  beforeEach ->
    BaseRouter = require 'routers/Base'

  describe 'link navigation', ->
    beforeEach ->
      sinon.spy BaseRouter.prototype, 'listenTo'
      sinon.spy BaseRouter.prototype, 'onNavigateLink'
      sinon.spy BaseRouter.prototype, 'navigate'

      baseRouter = new BaseRouter

    afterEach ->
      BaseRouter::listenTo.restore()
      BaseRouter::onNavigateLink.restore()
      BaseRouter::navigate.restore()

    describe 'initial listeners', ->
      it 'calls `listenTo`', ->
        expect(baseRouter.listenTo.called).to.equal true

      it 'has correct arguments', ->
        expect(baseRouter.listenTo.args[0][0]).to.equal application.vent
        expect(baseRouter.listenTo.args[0][1]).to.equal 'navigate:link'
        expect(baseRouter.listenTo.args[0][2]).to.equal baseRouter.onNavigateLink

    describe 'triggers navigation', ->
      beforeEach ->
        application.vent.trigger 'navigate:link', {href: 'something'}

      it 'calls #onNavigateLink', ->
        expect(baseRouter.onNavigateLink.called).to.equal true

      it 'calls #onNavigateLink with correct arguments', ->
        expect(baseRouter.onNavigateLink.args[0][0]).to.deep.equal {href: 'something'}

      it 'calls #navigate', ->
        expect(baseRouter.navigate.called).to.equal true

      it 'calls #navigate with correct options', ->
        expect(baseRouter.navigate.args[0][0]).to.equal 'something'
        expect(baseRouter.navigate.args[0][1]).to.deep.equal {trigger: true}
