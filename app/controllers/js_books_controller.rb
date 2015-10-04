class JsBooksController < ApplicationController

  def index
  end

  def show
    section_name = params[:section_name]
    @markdown = File.read("#{Rails.root}/js_book/#{section_name}.md")
  end

end

