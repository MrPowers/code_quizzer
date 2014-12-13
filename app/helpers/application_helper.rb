module ApplicationHelper
  def markdownify(str)
    markdown = Redcarpet::Markdown.new(HTMLwithPygments, fenced_code_blocks: true, no_intra_emphasis: true)
    markdown.render(str).html_safe
  end

  def markdownify_text(str)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true, no_intra_emphasis: true)
    markdown.render(str).html_safe
  end
end
