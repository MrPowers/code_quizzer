class JsBooksController < ApplicationController

  def index
    @sections = File.readlines("#{Rails.root}/js_book/00_learning_path.txt").inject([]) do |m, s|
      m.push(File.basename(s.strip, ".*"))
      m
    end
  end

  def show
    section_name = params[:section_name]
    @markdown = File.read("#{Rails.root}/js_book/#{section_name}.md")
  end

end

