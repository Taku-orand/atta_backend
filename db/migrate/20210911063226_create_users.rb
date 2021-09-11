class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
