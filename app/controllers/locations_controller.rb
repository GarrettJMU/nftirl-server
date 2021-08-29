class LocationsController < ApplicationController
  def countries
    render json: {countries: Country.all}.to_json, status: :ok
  end
end