class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.text :address
      t.string :establishedAt
      t.integer :phoneNumber
      t.string :email
      t.string :city
      t.string :description

      t.timestamps
    end
  end
end
