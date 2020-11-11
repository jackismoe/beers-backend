class BeersUsersController < ApplicationController
  def destroy
    user = User.find_by(id: params[:session])
    x = Beer.find_by(name: params[:beer])
    y = BeersUser.find_by(beer_id: x.id, user_id: user.id)
    y.user_id = 0
    y.save
    render json: user
  end

  def create
    beer = Beer.find_by(name: params[:beer])
    user = User.find_by(id: params[:session])
    new_beer_user = BeersUser.create(user_id: params[:session], beer_id: beer.id)

    new_beer_user.save
    render json: user
  end
end