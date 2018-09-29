module Libro; class ChapterSection

  include BookPathnameParser

  attr_reader :section_pathname

  alias_method :pathname, :section_pathname

  def initialize(section_pathname)
    @section_pathname = section_pathname
  end

  def to_param
    matched_text[2].dasherize
  end

  def markdown
    File.read(section_pathname)
  end

  def questions
    dirname = section_pathname.dirname.to_s
    basename = section_pathname.basename(".*").to_s + "_questions.yml"
    path = (dirname + "/" + basename)
    return [] unless File.exist?(path)
    YAML.load_file(path)
  end

end; end

