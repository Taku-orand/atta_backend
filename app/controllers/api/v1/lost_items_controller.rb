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
        notificated: true
      }
    rescue => exception
      render json: {
        notificated: false
      }
    end
  end

  def update
    item_id = params[:id]
    begin
      item = Item.find(item_id)
      item.update!(items_params)
      render json: {
        updated: true
      }
    rescue => exception
      render json: {
        updated: false
      }
    end
  end

  # QRコードのidとverification_idがそれぞれ一致するかどうか
  def is_valid?
    item_ids = item_ids_params
    begin
      item = Item.find(item_ids[:id])
      if item.verification_id == item_ids[:verification_id].to_i
        render json: {
          isValid: true
        }
      else
        render json: {
          isValid: false
        }
      end
    rescue => exception
      render json: {
        isValid: false,
        error: exception
      }
    end
  end

  private
  def item_ids_params
    params.require(:item).permit(:id, :verification_id)
  end

  def items_params
    params.require(:item).permit(:name, :content, :qr_code, :verification_id, :isValid)
  end
end
