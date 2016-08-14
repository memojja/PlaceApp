class AddforeingkeyToComment < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :comments,:places
  end
end
