class AddIconToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :icon_link, :string
  end
end
