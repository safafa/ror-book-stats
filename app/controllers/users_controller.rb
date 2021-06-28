class UsersController < ApplicationController
  
  def show 
    @user = User.find(current_user.id)
    @user_books = @user.created_books
    @user_groups = @user.groups
    @amount_hours = @user.created_books.sum(:amount)
  end

end
