require 'rest-client'
require 'json'

class Trail < ApplicationRecord
  include RestClient

  def self.get_trail_info
    trail_json = RestClient.get('https://data.ny.gov/api/views/tnqf-vydw/rows.json?accessType=DOWNLOAD')
    @trail_hash = JSON.parse(trail_json)
    @trail_hash
  end

end


# possible APIs:

# 'https://data.ny.gov/api/views/9ri8-5uc7/rows.json?accessType=DOWNLOAD'

# https://data.cityofnewyork.us/resource/tqcb-ntkc.json

 # https://data.ny.gov/api/views/7gkb-pzs9/rows.json?accessType=DOWNLOAD
