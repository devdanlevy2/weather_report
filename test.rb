require 'minitest/pride'
require 'minitest/autorun'
require 'json'
require './conditions.rb'
require 'byebug'

# class Condition
#   def initialize(zip)
#     @response = JSON.parse(File.read("conditions.json"))
#   end
# end


class WeatherTests < Minitest::Test


  def test_conditions
    c = Condition.new(27516)
    assert_equal 50.1, c.temperature
    assert_equal "Chapel Hill, NC", c.location
  end

  def test_ten_day_forecast
    c = TenDayForecast.new(27516)
    assert_equal "Sunny. High 53F. Winds WSW at 5 to 10 mph.", c.ten_day
  end

  def test_alerts
    c = WeatherAlert.new(27516)
    assert_equal "\u000A...Flood Warning now in effect until Thursday morning...\u000A\u000AThe Flood Warning continues for\u000A the Des Moines River at Des Moines se 6th St...or from below the \u000A center street dam...to Runnells.\u000A* Until Thursday morning.\u000A* At 3:00 PM Monday the stage was 23.3 feet...or 0.7 feet below \u000A flood stage.\u000A* Flood stage is 24.0 feet.\u000A* No flooding is occurring and minor flooding is forecast.\u000A* Forecast...rise to flood stage late this evening. Continue rising \u000A to 24.3 feet...or 0.3 feet above flood stage...midday Tuesday. \u000A Then begin falling and go below flood stage Thursday morning.\u000A* Impact...at 24.0 feet...the bike trail is closed east of Water \u000A Street. Portions of other bike trails are also affected.\u000A\u000A\u000ALat...Lon 4159 9356 4152 9333 4145 9333 4154 9356\u000A 4159 9366 4159 9356 \u000A\u000A\u000A\u000A\u000A", c.alerts
  end
end
