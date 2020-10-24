class BeersController < ApplicationController
  def index
    beers = Beer.all
    render json: beers
  end

  def show
    beer = Beer.find_by(id: params[:id])
    render json: beer
  end

  def show_user_beers
    beers = User.beers.find_by(user_id: params[:id])
    render json: beers
  end

  def create
    beer = Beer.create(brand: Faker::Beer.brand, name: Faker::Beer.name, style: Faker::Beer.style, hop: Faker::Beer.hop, yeast: Faker::Beer.yeast, malts: Faker::Beer.malts, ibu: Faker::Beer.ibu, alcohol: Faker::Beer.alcohol, blg: Faker::Beer.blg)
    render json: beer
  end
end
