class Item < ApplicationRecord
  belongs_to :user
  has_many :lost_item_infomations, dependent: :destroy
end
