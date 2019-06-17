require 'rest-client'
require 'json'

class Trail < ApplicationRecord
  include RestClient

  def self.get_trail_info
    trail_json = RestClient.get('https://www.hikingproject.com/data/get-trails?lat=40.71427&lon=-74.00597&maxDistance=150&maxResults=250&key=200492212-d7400571b0620563169df18724f8dc46')
    @trail_hash = JSON.parse(trail_json)
    @trail_hash
  end

  def geolocation
    @geolocation = "#{self.latitude}, #{self.longitude}"
  end

  def distance_from_ny
    Geocoder::Calculations.distance_between([40.71427, -74.00597], [self.latitude.to_f, self.longitude.to_f]).round(2)
  end

  def self.distance_sort
    self.all.sort_by {|trail| trail.distance_from_ny}
  end

end
