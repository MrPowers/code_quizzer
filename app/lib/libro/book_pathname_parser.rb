module Libro; module BookPathnameParser

  def humanized_name
    matched_text[2].titleize
  end

  def position
    matched_text[1].to_i
  end

  def regex
    /(\d+)_(\w+)/
  end

  def matched_text
    pathname.basename.to_s.match(regex)
  end

end; end

