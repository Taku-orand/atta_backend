class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :details
      t.string :map_url
      t.string :qr_code

      t.timestamps
    end
  end
end
