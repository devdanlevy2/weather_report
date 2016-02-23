require 'httparty'

class WeatherAlerts
  def initialize(zip)
    @response = JSON.parse(File.read("weather_alerts.json"))
  end

  def alerts
    @response["alerts"]["type"]["message"]
  end
end
