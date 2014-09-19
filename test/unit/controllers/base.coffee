describe 'base controller', ->
  BaseController = undefined
  baseController = undefined

  beforeEach ->
    BaseController = require 'controllers/Base'
    baseController = new BaseController

  describe '#parseQueryParams', ->
    it 'is defined', ->
      expect(baseController.parseQueryParams).to.not.equal undefined

    it 'parses correctly', ->
      page = '12'
      q = 'something'

      queryString = "page=#{page}&q=#{q}"

      parsedParams = baseController.parseQueryParams queryString

      expect(parsedParams).to.deep.equal {page, q}
