class BeersUsersController < ApplicationController
  def destroy
    user = User.find(params[:session][:user_id])
    beer = BeersUser.find(params[:id])
    beer.user_id = 0

    if beer.save
      render json: user
    end
  end

  def create
    beer = Beer.find_by(id: params[:beer][:id], brand: params[:beer][:brand])
    user = User.find_by(id: params[:session][:user_id])
    new_beer_user = BeersUser.create(user_id: user.id, beer_id: beer.id)

    if new_beer_user.save
      render json: user
    end
  end
end