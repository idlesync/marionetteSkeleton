BaseController = window.require 'controllers/Base'
application = window.require 'application'

HomeController = BaseController.extend
  defaultRoute: (parameters) ->
    window.require 'modules/homeContent'
    application.homeContentModule.display application.contentRegion

module.exports = new HomeController
