class UsersController < ApplicationController
  def create
    address = params[:address]

    if address.blank?
      return render json: { error: "missing address" }, status: 400
    end

    user = User.find_by_address(address)

    unless user
      user = User.create!(address: address)
    end

    render json: { user: user }
  end

  def collections
    address = params[:address]
    collections = params[:address]

    if collections.blank?
      return render json: {}, status: :ok
    end

    if address.blank?
      return render json: { error: "missing address" }, status: 400
    end

    user = User.find_by_address(address)

    unless user
      user = User.create!(address: address)
    end

  end

  private

  def maybe_add_collection

  end
end