require 'rails_helper'
RSpec.describe 'Groups creating and Editing', type: :feature do
  it 'create group' do
    login_as create(:user), scope: :user
    visit '/groups/new'
    fill_in 'Name', with: 'Crime'
    click_button 'Submit'
    expect(page).to have_content 'Crime'
  end

  it 'edit group' do
    login_as create(:user), scope: :user
    visit '/groups/new'
    fill_in 'Name', with: 'Horror'
    click_button 'Submit'
    click_link 'Edit'
    fill_in 'Name', with: 'Science'
    click_button 'Submit'
    expect(page).to have_content 'Science'
  end

  it 'delete group' do
    login_as create(:user), scope: :user
    visit '/groups/new'
    fill_in 'Name', with: 'Horror'
    click_button 'Submit'
    click_link 'Delete'
    expect(page).to have_content 'safita groups'
  end
end
