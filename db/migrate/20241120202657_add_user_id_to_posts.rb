class AddUserIdToPosts < ActiveRecord::Migration[7.2]
  def change
    add_column :posts, :user_id, :integer, null: false # Constraint

    add_foreign_key :posts, :users # Must be a real foreign key
    add_index :posts, :user_id     # Index (performance)
  end
end
