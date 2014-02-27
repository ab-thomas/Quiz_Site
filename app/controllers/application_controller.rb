# main class
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    User.find_by_id(session[:user_id])
  end

  def current_question
    Question.find_by_id(params[:id])
  end
end
