class SecretariesController < ApplicationController
  def create
    user = User.find_by_email(params[:email])
    if user != nil
      binding.pry
    else
      User.create(user_params)
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end
end
