class Group < ApplicationRecord
  belongs_to :user
  has_many :books, dependent: :destroy
  mount_uploader :icon, FileUploader
  validates :name, presence: true
end
