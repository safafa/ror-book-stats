module UsersHelper
    def user_edit(user)
        if user == current_user
            link_to('Edit', edit_user_registration_path(user.id), class: 'nav-link')
        end
    end 

    def user_cancel(user)
        if user == current_user
            link_to('Cancel account', cancel_user_registration_path(user.id), class: 'nav-link')
        end
    end 
end
