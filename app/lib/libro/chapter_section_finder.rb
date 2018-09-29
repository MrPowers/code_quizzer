module Libro; class ChapterSectionFinder

  attr_reader :sections, :current_section

  def initialize(sections, current_section)
    @sections = sections
    @current_section = current_section
  end

  def current_index
    sections.index do |s|
      s.to_param == current_section.to_param
    end
  end

  def previous
    return if current_index <= 0
    sections[current_index - 1]
  end

  def next
    sections[current_index + 1]
  end

end; end


