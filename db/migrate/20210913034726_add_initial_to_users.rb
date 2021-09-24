class AddInitialToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :initial, :boolean, default: true
  end
end
