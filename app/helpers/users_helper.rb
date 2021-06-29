module UsersHelper
  def user_edit(user)
    link_to('Edit', edit_user_registration_path(user.id), class: 'nav-link') if user == current_user
  end

  def user_cancel(user)
    link_to('Cancel account', cancel_user_registration_path(user.id), class: 'nav-link') if user == current_user
  end
end
