class QuizController < ApplicationController
  def index
    @questions = Question.all
  end
end
