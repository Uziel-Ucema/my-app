# db/migrate/YYYYMMDDHHMMSS_create_subscriptions.rb
class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.references :user, foreign_key: true
      t.references :location, foreign_key: true
      t.references :folder, foreign_key: true
      t.timestamps
    end
    add_index :subscriptions, [:user_id, :location_id, :folder_id], unique: true
  end
end
