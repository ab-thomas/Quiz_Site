class QuestionsController < ApplicationController


	def index
		@question = Question.new
		@questions = Question.all 
		@q_length = @questions.length

	end

	def show
		@current_question_id = params[:id]
		@question = Question.find(params[:id])
	end

	def create
		Question.create({question: params[:question_question], answer: params[:answer]}) 
		redirect_to questions_path
	end

	def check
		current_question = Question.find(params[:id])
		given_answer = params[:answer]
		@correct = current_question.answer == given_answer
		
	end

end
