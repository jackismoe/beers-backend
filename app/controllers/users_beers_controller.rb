class UsersBeersController < ApplicationController
  def index
    user = User.find_by(email: session[:email])
    beers = user.beers
    render json: beers
  end
end