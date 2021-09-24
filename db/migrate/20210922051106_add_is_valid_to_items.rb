class AddIsValidToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :isValid, :boolean, default: true
  end
end
