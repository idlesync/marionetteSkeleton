application = window.require 'application'

HomeContentView = Backbone.Marionette.LayoutView.extend
  template: window.require('templates')(Handlebars)['app/templates/home/homeContent.hbs']

  className: 'home-content-view'

module.exports = HomeContentView
