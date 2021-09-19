class Api::V1::LostItemsController < ApplicationController
  def show
    item_id = params[:id]
    begin
      item = Item.find(item_id)
      user = item.user
      render json: {
        lostItemData:{
          item: item,
          user: user
        },
        found: true
      }
    rescue => exception
      render json: {
        found: false,
        error: exception
      }
    end

  end
end
