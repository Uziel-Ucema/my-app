class CreatePetSubmissions < ActiveRecord::Migration[7.1]
  def change
    create_table :pet_submissions do |t|
      t.string :title
      t.text :body
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
