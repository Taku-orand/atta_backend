class CreateLostItemInfomations < ActiveRecord::Migration[6.1]
  def change
    create_table :lost_item_infomations do |t|
      t.references :item, null: false, foreign_key: true
      t.string :found_location
      t.string :item_destination_details

      t.timestamps
    end
  end
end
