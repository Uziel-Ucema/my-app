class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(registration_params)

    if User.exists?(email: @user.email)
      flash.now[:alert] = "A user has already been created with this email"
      render :new, status: :unprocessable_entity
    elsif User.exists?(username: @user.username)
      flash.now[:alert] = "A user has already been created with this username"
      render :new, status: :unprocessable_entity
    elsif @user.save
      login @user
      redirect_to root_path, notice: "Successfully created account"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def registration_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation)
  end
end
  