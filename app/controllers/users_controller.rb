class UsersController < ApplicationController
  def new
    @new_user = User.new
  end

  def create
    @new_user = User.create(user_params)
  end
  
  def index
    users = User.all
    render json: UserSerializer.new(users).to_serialized_json
  end

  def show
    user = User.find_by(id: params[:id])
    render json: UserSerializer.new(user).to_serialized_json
  end

  private
  def user_params
    params[:user].permit(:name, :email, :phone, :password_digest)
  end
end
