tests = [
  # path to module test file names
  'config'
  'index'
  'application'

  # views
  'views/home/content'
  # end view

  # routers
  'routers/base'
  'routers/home'
  # end routers

  # modules
  'modules/homeContent'
  # end modules

  # controllers
  'controllers/base'
  'controllers/home'
  # end controllers
]

for test in tests
  require "test/unit/#{test}"

if window.mochaPhantomJS
  mochaPhantomJS.run()
else
  runner = mocha.run()

  runner.on 'end', ->
    if _$jscoverage?
      new MochaCov
