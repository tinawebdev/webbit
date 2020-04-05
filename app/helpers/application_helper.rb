module ApplicationHelper
  def render_svg(name, styles: "fill-current text-gray-400", title:nil)
    filename = "#{name}.svg"
    title ||= name.underscore.humanize
    inline_svg(filename, aria: true, nocomment: true, title: title, class: styles)
  end

  def author_of?(record)
    user_signed_in? && current_user.id == record.user_id
  end
end
