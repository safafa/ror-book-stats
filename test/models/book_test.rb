require 'test_helper'

class BookTest < ActiveSupport::TestCase
  context 'associations' do
    should belong_to(:author).class_name('User')
    should belong_to(:group).class_name('Group')
  end

  context 'validations' do
    should validate_presence_of(:name)
    should validate_presence_of(:amount)
  end
end
