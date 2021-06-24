class AddAuthorToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :author_id, :integer
  end
end
