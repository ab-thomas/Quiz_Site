class QuizController < ApplicationController
  def index
  	@question = Question.first
  end

  def show 
  	@question = Question.find(params[:id])
  	# redirect_to '/'
  end

end
