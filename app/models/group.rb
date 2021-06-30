class Group < ApplicationRecord
  belongs_to :user
  has_many :books, dependent: :destroy
  scope :ordered_by_name, -> { order(name: :asc) }
  mount_uploader :icon, FileUploader
  validates :name, presence: true
end
