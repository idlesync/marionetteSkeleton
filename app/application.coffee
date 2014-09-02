application = new Backbone.Marionette.Application()

application.addRegions
  contentRegion: '#content'

application.addInitializer ->
  window.require 'routers/home'

module.exports = application
