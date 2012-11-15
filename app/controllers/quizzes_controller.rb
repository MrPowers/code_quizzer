class QuizzesController < ApplicationController
	load_and_authorize_resource
	def new
	end

	def create
		@quiz.user_id = current_user.id
		if @quiz.save
			redirect_to @quiz
		end
	end

	def index
	end

	def show
	end

	def edit
	end

	def update
		if @quiz.update_attributes(params[:quiz])
			redirect_to @quiz
		end
	end

	def destroy
		@quiz.destroy
		redirect_to quizzes_path
	end
end
