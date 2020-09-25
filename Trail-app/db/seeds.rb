Trail.destroy_all

def seed_trails
  Trail.get_trail_info.each do |key, trail_array|
    if key == "trails"
    trail_array.each do |trail|
      puts "Creating #{trail["name"]}"
      Trail.create!(
        name: trail["name"], 
        trail_type: trail["type"], 
        summary: trail["summary"], 
        difficulty: trail["difficulty"], 
        stars: trail["stars"], 
        starVotes: trail["starVotes"], 
        location: trail["location"], 
        url: trail["url"], 
        imgSqSmall: trail["imgSqSmall"], 
        imgSmall: trail["imgSmall"], 
        imgSmallMed: trail["imgSmallMed"], 
        imgMedium: trail["imgMedium"], 
        length: trail["length"], 
        ascent: trail["ascent"], 
        descent: trail["descent"], 
        high: trail["high"], 
        low: trail["low"], 
        longitude: trail["longitude"], 
        latitude: trail["latitude"], 
        conditionStatus: trail["conditionStatus"], 
        conditionDetails: trail["conditionDetails"], 
        conditionDate: trail["conditionDate"])
      end
    end
  end
end

seed_trails
