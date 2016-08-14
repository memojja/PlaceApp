class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :customer_id
      t.integer :place_id
      t.text :body

      t.timestamps
    end
  end
end
