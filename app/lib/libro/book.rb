module Libro; class Book

  attr_reader :book_pathname

  def initialize(book_pathname)
    @book_pathname = book_pathname
  end

  def chapters
    @chapters ||= book_pathname.children.map do |pathname|
      Chapter.new(pathname)
    end.sort_by(&:position)
  end

  def sections
    @sections ||= chapters.inject([]) do |memo, chapter|
      memo += chapter.chapter_sections
      memo
    end
  end

  def find_section(section_name)
    sections.find {|s| s.to_param == section_name}
  end

end; end

