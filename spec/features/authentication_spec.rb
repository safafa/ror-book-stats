require 'rails_helper'
describe 'the signin process', type: :feature do
  before :each do
    @user = User.create(username: 'loulou', email: 'safafa@gmail.com', password: '123456')
  end
  after :each do
    @user.destroy
  end

  it 'signs @user in with username' do
    visit '/users/sign_in'
    fill_in 'Username or email', with: 'loulou'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    expect(current_path).to eq('/users/sign_in')
  end

  it 'Should not signs @user in if not valid' do
    visit '/users/sign_in'
    fill_in 'Username or email', with: 'detola@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    expect(current_path).to eq('/users/sign_in')
  end
end
