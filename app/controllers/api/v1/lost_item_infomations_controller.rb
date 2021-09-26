class Api::V1::LostItemInfomationsController < ApplicationController
  def show
    item_id = params[:id]
    begin
      item = Item.find(item_id)
      infos = item.lost_item_infomations.order(created_at: "DESC")
      render json: {
        lost_item_infos: infos,
        found: true
      }
    rescue => exception
      render json: {
        found: false
      }
    end
  end
  
  def create
    lost_item_infomation = LostItemInfomation.new(lostItemInfomation_params)
    begin
      lost_item_infomation.save!
      render json: {
        created: true
      }
    rescue => exception
      render json: {
        created: false
      }
    end
  end

  def destroy
    info_id = params[:id]
    begin
      delete_info = LostItemInfomation.find(info_id)
      delete_info.destroy!
      render json: {deleted: true}
    rescue => exception
      render json: {deleted: false}
    end
  end
  
  private
  def lostItemInfomation_params
    params.require(:lost_item_infomation).permit(:item_id, :found_location, :item_destination_details)
  end
end
