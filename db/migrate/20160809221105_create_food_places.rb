class CreateFoodPlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :food_places do |t|
      t.integer :place_id
      t.integer :food_id

      t.timestamps
    end
  end
end
