class UserMailer < ApplicationMailer
    default from: 'aballaghsafa@gmail.com'

    def welcome_email
        @user = params[:user]
        @url  = 'https://fierce-ocean-28088.herokuapp.com/'
        mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end
end
