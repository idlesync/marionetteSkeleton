describe 'home router', ->
  homeRouter = undefined

  beforeEach ->
    homeRouter = require 'routers/home'

  afterEach ->

  it 'has a default route', ->
    expect(homeRouter.appRoutes['']).to.equal 'defaultRoute'

  it.skip 'has default route that accepts parameters', ->
