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

  def create
    lost_item = params[:lostItemData]
    begin
      NotificationMailer.send_confirm_to_user(lost_item[:lostItemData]).deliver
      render json: {
        created: true
      }
    rescue => exception
      render json: {
        created: false
      }
    end
  end
end
