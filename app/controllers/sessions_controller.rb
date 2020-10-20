def new
end

def create 
  @user = User.find_by(email: params[:email])
end

def destroy
  session.clear
end