require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  context 'associations' do
    should belong_to(:user).class_name('User')
  end

  context 'validations' do
    should validate_presence_of(:name)
  end
end
