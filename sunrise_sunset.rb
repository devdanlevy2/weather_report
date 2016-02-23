require 'httparty'

class SunriseSunset

  def initialize(zip)
    @zip = zip
    @response = get_response
  end

  def get_response
    key = ENV['WUNDERGROUND_KEY']
    HTTParty.get("http://api.wunderground.com/api/#{key}/astronomy/q/#{@zip}.json")
  end

  def SunriseSunset
    key = ENV['WUNDERGROUND_KEY']
    HTTParty.get("http://api.wunderground.com/api/#{key}/astronomy/q/#{@zip}.json")
    @response = [][]
  end



end
