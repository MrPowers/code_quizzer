module ApplicationHelper

  def markdownify(str)
    markdown = Redcarpet::Markdown.new(HTMLwithPygments, fenced_code_blocks: true, no_intra_emphasis: true)
    markdown.render(str).html_safe
  end

  def alert_css_class(flash_type)
    {
      :success => 'alert-success',
      :error => 'alert-danger',
      :alert => 'alert-warning',
      :notice => 'alert-info'
    }[flash_type.to_sym] || flash_type.to_s
  end

end
