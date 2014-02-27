class UsersController < ApplicationController
  def index
    @current_user = current_user
  end

  def new
    # session[:errors] = nil
    @user = User.create
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:errors] = nil
      redirect_to root_path
      session[:user_id] = @user.id
    else
      session[:errors] =  @user.errors.full_messages

      redirect_to new_user_path(@user)
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
