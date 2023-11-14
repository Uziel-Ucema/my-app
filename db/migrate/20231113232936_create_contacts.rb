class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :subject
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
