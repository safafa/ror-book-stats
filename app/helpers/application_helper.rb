module ApplicationHelper
  def authentication_links(user)
    if user
      link_to('Log out', destroy_user_session_path, method: :delete, class: 'nav-link')
    else
      link_to('Sign in', user_session_path, class: 'nav-link')
    end
  end

  def books_link(user)
    link_to('Books', books_path, class: 'nav-link') if user
  end

  def externals_link(user)
    link_to('External books', external_books_path, class: 'nav-link') if user
  end

  def groups_link(user)
    link_to('Groups', groups_path, class: 'nav-link') if user
  end

  def profile_link(user)
    link_to('Profile', user_path(current_user.id), class: 'nav-link') if user
  end
end
