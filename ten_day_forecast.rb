require 'httparty'

class TenDayForecast
  def initialize(zip)
    @response = JSON.parse(File.read("ten_day_forecast.json"))
    # @response = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/conditions/q/#{zip}")
  end

  # def get_response
  #   key = ENV['WUNDERGROUND_KEY']
  #   HTTParty.get("http://api.wunderground.com/api/#{key}/forecast10day/q/#{@zip}.json")
  # end

  def ten_day
    @response["forecast"]["period"]["fcttext"]
  end
end
