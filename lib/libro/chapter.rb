module Libro; class Chapter

  include BookPathnameParser

  attr_reader :chapter_pathname

  alias_method :pathname, :chapter_pathname

  def initialize(chapter_pathname)
    @chapter_pathname = chapter_pathname
  end

  def chapter_sections
    @chapter_sections ||= chapter_pathname.children.select {|s| s.extname == ".md"}.map do |pathname|
      ChapterSection.new(pathname)
    end.sort_by(&:position)
  end

end; end

