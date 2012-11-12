class QuestionsController < ApplicationController
	def create
		@test = Test.find(params[:test_id])
		@question = @test.questions.create(params[:question])
		redirect_to test_path(@test)
	end

	def update
		@test = Test.find(params[:test_id])
		@question = @test.questions.find(params[:id])
		@question.update_attributes(params[:question])
		redirect_to test_path(@test)
	end

	 def destroy
    @test = Test.find(params[:test_id])
    @question = @test.questions.find(params[:id])
    @question.destroy
    redirect_to test_path(@test)
  end

end