class InternalController < ApplicationController
  def system_check
    render json: {status: 'up'}.to_json
  end
end