class CreateDestinationCategories < ActiveRecord::Migration
  def change
    create_table :destination_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
