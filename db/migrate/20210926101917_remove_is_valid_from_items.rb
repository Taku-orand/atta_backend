class RemoveIsValidFromItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :items, :isValid, :boolean
  end
end
