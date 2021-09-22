class AddVerificationIdToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :verification_id, :integer
  end
end
