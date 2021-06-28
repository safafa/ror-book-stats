class Group < ApplicationRecord
  belongs_to :user
  has_many :books
  mount_uploader :icon, FileUploader
  validates :name, presence: true
end
