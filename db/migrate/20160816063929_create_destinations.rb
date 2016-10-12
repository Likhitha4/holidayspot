class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :title
      t.integer :city_id
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
