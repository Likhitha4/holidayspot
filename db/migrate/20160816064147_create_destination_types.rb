class CreateDestinationTypes < ActiveRecord::Migration
  def change
    create_table :destination_types do |t|
      t.integer :destination_id
      t.integer :destination_category_id

      t.timestamps
    end
  end
end
