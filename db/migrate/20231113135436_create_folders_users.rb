class CreateFoldersUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :folders_users, id: false do |t|
      t.references :user, foreign_key: { to_table: :users, column: :email }
      t.references :folder, foreign_key: { to_table: :folders, column: :name }
      t.timestamps
    end

    add_index :folders_users, [:user_id, :folder_id], unique: true
  end
end