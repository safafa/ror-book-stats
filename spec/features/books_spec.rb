require 'rails_helper'
RSpec.describe 'Books creating and Editing', type: :feature do
  it 'create uncategorized book' do
    login_as create(:user), scope: :user
    visit '/books/new'
    fill_in 'Name', with: 'booklet'
    fill_in 'Amount of time', with: '2'
    click_button 'Submit'
    expect(page).to have_content 'booklet'
  end

  it 'edit uncategorized book' do
    login_as create(:user), scope: :user
    visit '/books/new'
    fill_in 'Name', with: 'horses'
    fill_in 'Amount of time', with: '2'
    click_button 'Submit'
    click_link 'Edit'
    fill_in 'Name', with: 'Marco'
    click_button 'Submit'
    expect(page).to have_content 'Marco'
  end

  it 'delete book' do
    login_as create(:user), scope: :user
    visit '/books/new'
    fill_in 'Name', with: 'Horror story'
    fill_in 'Amount of time', with: '2'
    click_button 'Submit'
    click_link 'Delete'
    expect(page).to have_content 'All books'
  end
end
