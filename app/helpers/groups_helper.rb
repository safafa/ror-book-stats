module GroupsHelper
  def show_icon(icon)
    if icon.url
      image_tag(icon.url, class: 'group_icon')
    else
      image_tag('https://via.placeholder.com/120', class: 'group_icon')
    end
  end
end
