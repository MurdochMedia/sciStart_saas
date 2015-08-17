class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan]
        if resource.plan_id == 2
          resource.save_with_payment
        else
          resource.save
        end
      end
    end
  end
  
  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :company_name, :username, :about, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :company_name, :username, :about, :email, :password, :password_confirmation, :current_password)
  end
end