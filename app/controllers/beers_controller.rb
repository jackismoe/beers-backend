class BeersController < ApplicationController
  def index
    beers = Beer.all
    render json: beers
  end

  def show
    beer = Beer.find_by(id: params[:id])
    render json: beer
  end

  def create
    beer = Beer.find_by(id: params[:id])

    if current_user
      if current_user.find_by(id: params[:id]) == false
        beer.user_id = current_user.id
      end
    end

    render json: current_user.beers
  end
end
