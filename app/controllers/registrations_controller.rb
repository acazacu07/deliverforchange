class RegistrationsController < Devise::RegistrationsController

 private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end

  def assign_role
      @number_of_users = User.all.count
      if @number_of_users == 1 
        current_user.add_role :admin
      end
  end

end