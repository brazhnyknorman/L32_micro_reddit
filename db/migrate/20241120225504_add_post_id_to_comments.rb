class AddPostIdToComments < ActiveRecord::Migration[7.2]
  def change
    add_column :comments, :post_id, :integer, null: false # Must be present

    add_foreign_key :comments, :posts # Must be a real foreign key
    add_index :comments, :post_id     # Add index
  end
end
