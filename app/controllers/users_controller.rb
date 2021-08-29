class UsersController < ApplicationController
  def create
    address = params[:address]
    if address.blank?
      return render json: { error: "missing address" }, status: 400
    end

    user = User.find_by_address(address)

    unless user
      user = User.create!(address)
    end

    render json: { user: user }
  end
end