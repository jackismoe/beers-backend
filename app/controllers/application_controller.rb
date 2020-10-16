class ApplicationController < ActionController::API
  def current_user
    @current_user = User.find_by(id: params[:id])
  end
end
