class CreateFoldersUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :folders_users, id: false do |t|
      t.string :email
      t.string :folder_name
      t.timestamps
    end

    add_index :folders_users, [:email, :folder_name], unique: true
  end
end