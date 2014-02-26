class QuestionsController < ApplicationController


	def index
		@question = Question.new
		@questions = Question.all 
		@q_length = @questions.length

	end

	def show
		@current_question_id = params[:id] 
		puts @current_question_id
		@question = Question.find(params[:id])
		# @question.answer == @
		# redirect_to 
	end

	def create
		Question.create({question: params[:question_question], answer: params[:answer]}) 
		redirect_to questions_path
	end

	def check
		puts @current_question_id
		@current_question = current_question
		puts @current_question
		@question.answer == params[:answer]
		# @question.answer

		redirect_to questions_path
	end

end
