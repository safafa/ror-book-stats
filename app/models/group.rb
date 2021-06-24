class Group < ApplicationRecord
  belongs_to :user
  has_many :books
  validates :name, presence: true
end
