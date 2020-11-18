class BeersUsersController < ApplicationController
  def destroy
    params.permit!	    
    x = User.find_by(id: params[:session])	    
    y = Beer.find_by(brand: params[:beerBrand], name: params[:beerName])	    
    z = BeersUser.find_by(beer_id: y.id, user_id: x.id)	
    z.delete	
    render json: y
  end

  def create
    beer = Beer.find_by(brand: params[:beerBrand], name: params[:beerName])
    user = User.find_by(id: params[:session][:user_id])
    new_beer_user = BeersUser.create(user_id: user.id, beer_id: beer.id)

    new_beer_user.save
    render json: user
  end
end