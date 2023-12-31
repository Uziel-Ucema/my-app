class AddClosedToPetSubmissions < ActiveRecord::Migration[7.1]
  def change
    add_column :pet_submissions, :closed, :boolean
  end
end
