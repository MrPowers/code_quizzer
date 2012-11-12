class QuestionsController < ApplicationController
  load_and_authorize_resource :test
  load_and_authorize_resource :question, :through => :test

	def create
		if @question.save
			redirect_to test_path(@test)
		end
	end

	def update
		if @question.update_attributes(params[:question])
			redirect_to test_path(@test)
		end
	end

	 def destroy
    @question.destroy
    redirect_to test_path(@test)
  end

  def show
  end

end