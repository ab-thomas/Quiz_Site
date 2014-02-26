class QuestionsController < ApplicationController


	def index
		@question = Question.new
		@questions = Question.all
		@q_length = @questions.length

	end

	def show
		@question = Question.find(params[:id])
		# redirect_to 
	end

	def create
		Question.create({question: params[:question_question], answer: params[:answer]}) 
		redirect_to questions_path
	end

	def check
		redirect_to questions_path
	end

end
