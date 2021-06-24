class Book < ApplicationRecord
    belongs_to :author, class_name: 'User'
    belongs_to :group, optional: true
    validates :name, presence: true
    validates :amount, presence: true
end
