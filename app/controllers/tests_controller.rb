class TestsController < ApplicationController
	load_and_authorize_resource
	def new
	end

	def create
		if @test.save
			redirect_to @test
		end
	end

	def index
	end

	def show
	end

	def edit
	end

	def update
		if @test.update_attributes(params[:test])
			redirect_to @test
		end
	end

	def destroy
		@test.destroy
		redirect_to tests_path
	end
end
