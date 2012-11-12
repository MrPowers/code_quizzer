class TestsController < ApplicationController
	def new
		@test = Test.new
	end

	def create
		@test = Test.new(params[:test])
		if @test.save
			redirect_to @test
		end
	end

	def index
		@tests = Test.all
	end

	

end
