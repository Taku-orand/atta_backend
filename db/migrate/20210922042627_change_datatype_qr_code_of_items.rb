class ChangeDatatypeQrCodeOfItems < ActiveRecord::Migration[6.1]
  def change
    change_column :items, :qr_code, :text
  end
end
