require 'rest-client'
require 'json'
require 'geocoder'

class Trail < ApplicationRecord
  include RestClient

  def self.get_trail_info
    trail_json = RestClient.get('https://www.hikingproject.com/data/get-trails?lat=40.71427&lon=-74.00597&maxDistance=100&maxResults=400&key=200492212-d7400571b0620563169df18724f8dc46')
    @trail_hash = JSON.parse(trail_json)
    @trail_hash
  end

  def geolocation
    @geolocation = "#{self.latitude}, #{self.longitude}"
  end

  def distance_from_ny
    Geocoder::Calculations.distance_between([40.71427, -74.00597], [self.latitude.to_f, self.longitude.to_f])
  end

end
# 40.71427, -74.00597

# possible APIs:

# 'https://data.ny.gov/api/views/9ri8-5uc7/rows.json?accessType=DOWNLOAD'

# https://data.cityofnewyork.us/resource/tqcb-ntkc.json

 # https://data.ny.gov/api/views/7gkb-pzs9/rows.json?accessType=DOWNLOAD


#camping: https://data.ny.gov/api/views/tnqf-vydw/rows.json?accessType=DOWNLOAD