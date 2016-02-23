require 'httparty'

class SunriseSunset

  def initialize(zip)
    @response = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/sunrise_sunset/q/#{zip}.json"))

  end

  def SunriseSunset
    key = ENV['WUNDERGROUND_KEY']
    HTTParty.get("http://api.wunderground.com/api/#{key}/astronomy/q/#{@zip}.json")
    @response = [][]
  end



end
