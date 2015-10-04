class JsBooksController < ApplicationController

  def index
    @sections = JsBook::Sections.ordered
  end

  def show
    section_name = params[:section_name]
    @section = JsBook::Sections.new(section_name)
    @markdown = File.read("#{Rails.root}/js_book/#{section_name}.md")
  end

end

