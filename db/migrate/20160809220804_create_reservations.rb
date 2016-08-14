class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.date :date
      t.integer :numberOfPeople
      t.integer :place_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
