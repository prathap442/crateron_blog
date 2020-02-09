module ApplicationHelper
  def user_signed_in?
    session[:user_id] ? true : false
  end  
  def current_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      @user = User.new
    end
    @user
  end    
end
