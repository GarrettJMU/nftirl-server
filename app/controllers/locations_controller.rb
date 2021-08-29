class LocationsController < ApplicationController
  def countries
    render json: {countries: City.pluck(:country).uniq}.to_json, status: :ok
  end

  def countries_cities
    results = []

    if params[:country]
      results = City.where(country: params[:country]).pluck(:city)
    end

    render json: {cities: results}, status: :ok
  end
end