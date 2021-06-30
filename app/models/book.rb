class Book < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :group, optional: true
  scope :external, -> { where('group_id is null') }
  scope :ordered_by_date, -> { order(created_at: :desc) }
  validates :name, presence: true
  validates :amount, presence: true
end
