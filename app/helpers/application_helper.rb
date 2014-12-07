module ApplicationHelper
  def markdownify(str)
    markdown ||= Redcarpet::Markdown.new(HTMLwithPygments, fenced_code_blocks: true, no_intra_emphasis: true)
    markdown.render(str).html_safe
  end
end
