class BeersController < ApplicationController
  def index
    beers = User.find_by(id: params[:user_id]).beers
    render json: beers
  end
  
  def create
    beer = Beer.create(brand: Faker::Beer.brand, name: Faker::Beer.name, style: Faker::Beer.style, hop: Faker::Beer.hop, yeast: Faker::Beer.yeast, malts: Faker::Beer.malts, ibu: Faker::Beer.ibu, alcohol: Faker::Beer.alcohol, blg: Faker::Beer.blg)
    render json: beer
  end
end
