require 'minitest/pride'
require 'minitest/autorun'
require 'json'
require './conditions.rb'
require './weather_alerts.rb'
require './ten_day_forecast.rb'
require 'byebug'

class Condition
  def initialize(zip)
    @response = JSON.parse(File.read("conditions.json"))
  end
end


class WeatherTests < Minitest::Test


  def test_conditions
    c = Condition.new(27516)
    assert_equal 50.1, c.temperature
    assert_equal "Chapel Hill, NC", c.location
  end

  def test_ten_day_forecast
    t = TenDayForecast.new(27516)
    assert_equal "Sunny. High 53F. Winds WSW at 5 to 10 mph.", t.ten_day
  end

  def test_alerts
    a = WeatherAlert.new(27516)
    assert_equal "", a.alerts
  end
end
