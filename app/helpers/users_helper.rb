module UsersHelper
  def user_edit(user)
    link_to('Edit', edit_user_registration_path(user.id), class: 'nav-link') if user == current_user
  end

  def user_cancel(user)
    link_to('Cancel account', cancel_user_registration_path(user.id), class: 'nav-link') if user == current_user
  end

  def show_image(icon)
    if icon.url
      image_tag(icon.url, class: 'profile-icon')
    else
      image_tag('https://via.placeholder.com/120', class: 'profile-icon')
    end
  end
end
