describe 'home router', ->
  homeRouter = undefined

  beforeEach ->
    homeRouter = require 'routers/home'

  it 'has a default route', ->
    expect(homeRouter.appRoutes['']).to.equal 'defaultRoute'

  it 'has default route that accepts parameters', ->
    expect(homeRouter.appRoutes['?*parameters']).to.equal 'defaultRoute'
