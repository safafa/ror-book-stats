class Book < ApplicationRecord
    belongs_to: author, class_name: 'User'
    belongs_to :group
end
