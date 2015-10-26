class JsBooksController < ApplicationController

  def index
    @chapters = book.chapters
  end

  def show
    section_name = params[:section_name]
    @section = book.find_section(section_name)
    @chapter_section_finder = Libro::ChapterSectionFinder.new(book.sections, @section)
    @previous_section = @chapter_section_finder.previous
    @next_section = @chapter_section_finder.next
    #@section = JsBook::Sections.new(section_name)
    #@markdown = File.read("#{Rails.root}/js_book/#{section_name}.md")
  end

  def book
    Libro::Book.new(Pathname.new("#{Rails.root}/books/learn_javascript_logically"))
  end

end

