module ApplicationHelper
  def markdownify(str)
    @markdown ||= Redcarpet::Markdown.new(HTMLwithPygments, fenced_code_blocks: true)
    find_and_preserve(@markdown.render(str)).html_safe
  end
end
