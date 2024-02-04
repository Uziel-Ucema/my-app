class CreateLocationsUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :locations_users, id: false do |t|
      t.belongs_to :location
      t.belongs_to :user
    end

    add_index :locations_users, [:location_id, :user_id], unique: true
  end
end
