class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  after_action :assign_role, only:[:create]
  
  def assign_role
      @number_of_users = User.all.count
      if @number_of_users == 1 
        current_user.add_role :admin
      end
  end
  
   
end
