class Nps
  include HTTParty
  base_uri 'https://developer.nps.gov/api/v1/'

  def initialize(limit = 1000, start = 1)
    @api_key = ENV['NPS_API_KEY']
    @options = {
      query: {
        limit: limit,
        start: start,
        api_key: @api_key
      }
    }
  end

  def parks
    self.class.get("/parks", @options).parsed_response["data"]
  end
end
