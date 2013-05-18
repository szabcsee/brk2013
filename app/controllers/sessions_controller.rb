class SessionsController < ApplicationController
  def new
  end


def create
  user = User.find_by_reference_number(params[:reference_number])
  if user && user.authenticate(params[:reference_number])
    session[:user_id] = user.id
    redirect_to user, notice: "Logged in!"
  else
    flash.now.alert = "Email or password is invalid"
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, notice: "Logged out!"
end

end