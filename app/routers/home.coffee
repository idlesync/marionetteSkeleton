BaseRouter = window.require 'routers/Base'

HomeRouter = BaseRouter.extend
  controller: window.require 'controllers/home'
  appRoutes:
    '?*parameters': 'defaultRoute'
    '': 'defaultRoute'

module.exports = new HomeRouter
