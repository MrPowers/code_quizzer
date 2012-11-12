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

	def show
		@test = Test.find(params[:id])
	end

	def edit
		@test = Test.find(params[:id])
	end

	def update
		@test = Test.find(params[:id])
		if @test.update_attributes(params[:test])
			redirect_to @test
		end
	end

	def destroy
		@test = Test.find(params[:id])
		@test.destroy
		redirect_to tests_path
	end
end
