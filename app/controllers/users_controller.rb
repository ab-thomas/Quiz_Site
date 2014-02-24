class UsersController < ApplicationController
  def new
    @user = User.create
  end

  def create
    User.create(username: params[:username], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    redirect_to '/'
  end
end
