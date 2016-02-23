require 'httparty'

class Condition
  def initialize(zip)
      @response = JSON.parse(File.read("conditions.json"))
  end

  def temperature
    @response["current_observation"]["temp_f"]
  end

  def location
    @response["current_observation"]["display_location"]["full"]
  end
end
