class LocationsController < ApplicationController
  def countries
    render json: {countries: Country.all}.to_json, status: :ok
  end
end

Rails.root.join('db', 'migrate', 'worldcities.csv')

count = 0
CSV.foreach(Rails.root.join('db', 'migrate', 'worldcities.csv')) do |row|
  next if count > 0
  puts row
  count += 1
end



cities = CSV.read(Rails.root.join('db', 'migrate', 'worldcities.csv'), headers:true)

cities.each do |row|
  puts "#{row['Name']} - #{row['Phone']}"
end
