require "csv"

class ReallyBackfillCities < ActiveRecord::Migration[6.0]
  def change
    cities = CSV.read(Rails.root.join('db', 'migrate', 'worldcities.csv'), headers: true)
    cities.each do |row|
      City.create!(city: row["city"],
                   city_ascii: row["city"],
                   lat: row["lat"],
                   lng: row["lng"],
                   country: row["country"],
                   iso2: row["iso2"],
                   iso3: row["iso3"],
                   admin_name: row["admin_name"],
                   capital: row["capital"],
                   population: row["population"]
      )
    end
  end
end
