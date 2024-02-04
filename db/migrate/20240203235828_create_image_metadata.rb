class CreateImageMetadata < ActiveRecord::Migration[7.1]
  def change
    create_table :image_metadata do |t|
      t.string :breed
      t.string :image_name
      t.string :location
      t.string :time

      t.timestamps
    end
  end
end
