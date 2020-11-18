class BeersUsersController < ApplicationController
  def destroy
    
    beer = BeersUser.find(params[:id])
    beer.user_id = 0
    beer.save
  end

  def create
    beer = Beer.find_by(brand: params[:beerBrand], name: params[:beerName])
    user = User.find_by(id: params[:session][:user_id])
    new_beer_user = BeersUser.create(user_id: user.id, beer_id: beer.id)

    new_beer_user.save
    render json: user
  end
end