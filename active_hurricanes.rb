require 'httparty'

class ActiveHurricanes

  def initialize(zip)
    @zip = zip
    @response  = get_response
  end

  def get_response
    key = ENV['WUNDERGROUND_KEY']
    HTTParty.get("http://api.wunderground.com/api/#{key}/currenthurricane/q/#{@zip}.json")
  end

  def active_huuricane
    @response[][]
  end


end
