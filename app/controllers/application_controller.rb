class ApplicationController < ActionController::API
  def current_user
    user = User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def login(user)
    session[:user_id] = user.id
  end

  def logout
    if current_user.nil? || current_user.id != params[:id].to_i
      session.clear
    end
  end
end
