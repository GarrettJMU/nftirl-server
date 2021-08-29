class LocationsController < ApplicationController
  def countries
    render json: {countries: City.pluck(:country).uniq}.to_json, status: :ok
  end
end