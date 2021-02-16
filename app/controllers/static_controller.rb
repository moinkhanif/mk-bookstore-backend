class StaticController < ApplicationController
  def home
    render json: {
      status: "running"
    }
  end
end
