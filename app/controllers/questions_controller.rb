class QuestionsController < ApplicationController


	def index
		@question = Question.new
		@current_user = current_user
	end

	def show
		@question = Question.find(params[:id])
	end

	def create
		Question.create({question: params[:question_question], answer: params[:answer]})
		redirect_to questions_path
	end

	def check

		redirect_to questions_path
	end

end
