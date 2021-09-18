class Api::V1::LostItemsController < ApplicationController
  def show
    item_id = params[:id]
    item = Item.find(item_id)
    user = item.user
    render json: {
      item: item,
      user: user
    }
  end
end
