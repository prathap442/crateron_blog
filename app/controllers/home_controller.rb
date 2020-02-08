class HomeController < ApplicationController
  def index
    @user = User.new ||  
    unless current_user.id
      redirect_to sign_in_path
    end
  end

  def sign_in
    @user = User.new unless session[:user_id]
    redirect_to new_user_path
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end
