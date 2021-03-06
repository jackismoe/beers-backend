class UsersController < ApplicationController
  def new
    @new_user = User.new
  end

  def create
    new_user = User.create(user_params)
    render json: new_user
  end
  
  def index
    users = User.all
    render json: UserSerializer.new(users).to_serialized_json
  end

  def show
    user = User.find_by(id: params[:id])
    render json: UserSerializer.new(user).to_serialized_json
  end

  def update
    user = User.find_by(id: params[:id])
    if params[:name] != ''
      user.name = params[:name]
    end
    
    if params[:email] != ''
      user.email = params[:email]
    end
    
    if params[:phone] != ''
      user.phone = params[:phone]
    end
    
    if params[:password_digest] != '' 
      user.password_digest = params[:password_digest]
    end
    
    user.save
    render json: user
  end

  def destroy
    user = User.find_by(id: params[:user][:id])
    user.destroy
  end

  private
  def user_params
    params[:user].permit(:name, :email, :phone, :password_digest)
  end
end
