application = window.require 'application'

application.on 'start', ->
  Backbone.history.start pushState: false

application.start()
