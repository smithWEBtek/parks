namespace :nps do
  desc 'Import all parks from National Parks Service API'
  task parks: :environment do |_env|
    parks = Nps.new.parks

    puts "Starting National Parks Service API Import"

    parks.each do |data|
      park = Park.find_or_create_by(api_id: data["id"])
      park.states << data["states"].split(",").map do |state|
        State.find_or_create_by(abbreviation: state)
      end

      park.lat_long = data["latLong"]
      park.description = data["description"]
      park.designation = data["designation"]
      park.park_code = data["parkCode"]
      park.directions_info = data["directionsInfo"]
      park.directions_url = data["directionsUrl"]
      park.full_name = data["fullName"]
      park.url = data["url"]
      park.weather_info = data["weatherInfo"]
      park.name = data["name"]
      park.save

      print "."
    end

    puts "Import completed."
  end
end
