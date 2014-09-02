application = window.require 'application'

application.module 'homeContentModule', ->
  @display = (region) ->
    homeContentView = new (window.require 'views/home/Content')
    region.show homeContentView
