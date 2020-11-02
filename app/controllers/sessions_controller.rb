class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email]) || User.find_by(id: params[:session][:user_id])
    if user
      session[:user_id] = user.id
      render json: user
    elsif params['session'] == {}
      session[:user_id] = nil
    end
  end

  def show

  end

  def destroy
    session.clear
  end
end