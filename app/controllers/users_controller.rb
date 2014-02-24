class UsersController < ApplicationController
  def new
    @user = User.create
  end

  def create
    redirect_to '/'
  end
end
