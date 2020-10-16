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
    # current_user.beer.create

    beer = Beer.create(id: params[:id], brand: params[:brand], name: params[:name], style: params[:style], hop: params[:hop], yeast: params[:yeast], malts: params[:malts], ibu: params[:ibu], alcohol: params[:alcohol], blg: params[:blg])
    
    render json: beer
  end
end
