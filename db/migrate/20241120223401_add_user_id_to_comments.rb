class AddUserIdToComments < ActiveRecord::Migration[7.2]
  def change
    add_column :comments, :user_id, :integer, null: false # Must be present

    add_foreign_key :comments, :users # Verify foreign key
    add_index :comments, :user_id        # Add index
  end
end
