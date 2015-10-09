class StudentWebpagesController < ApplicationController

  layout "blank"

  def show
    @webpage = StudentWebpage.where(name: params[:id]).first
  end

end

