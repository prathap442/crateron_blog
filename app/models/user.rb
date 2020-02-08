class User < ApplicationRecord
  has_many :posts

  def self.check_already_exists?(user_params)
    params = user_params
    user = User.find_by_email(params[:email])
    if user 
      true
    else
      false
    end  
  end
end
