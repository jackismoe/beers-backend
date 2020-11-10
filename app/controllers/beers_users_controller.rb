class BeersUsersController < ApplicationController
  def destroy
    x = Beer.find_by(name: params[:beer])
    y = BeersUser.find_by(beer_id: x.id, user_id: params[:session][:user_id])
    y.user_id = 0
    y.save
  end

  def create
    beer = Beer.find_by(name: params[:beer])
    user = User.find_by(id: params[:session][:user_id])
    new_beer_user = BeersUser.create(user_id: params[:session][:user_id], beer_id: beer.id)

    new_beer_user.save
    render json: user
  end
end