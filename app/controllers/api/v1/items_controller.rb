class Api::V1::ItemsController < ApplicationController
  before_action :authenticate_user
  def index
    items = Item.where(user_id: current_user.id)

    render json: {
        items: items,
        found: true
      }
  end

  def show
    item_id = params[:id]

    begin
      item = Item.find(item_id)
      render json: { 
          item: item,
          found: true
      }
    rescue => exception
      render json: { item: {
        found: false,
        exception: exception
        }
      }
    end
  end

  def create
    new_item = Item.new(items_params)

    begin
      new_item.save!
      render json: {
        created: true,
        id: new_item.id
      }
    rescue => exception
      render json: {created: false}
    end
  end

  def update
  end

  def destroy
    item_id = params[:id]
    
    begin
      delete_item = Item.find(item_id)
      delete_item.destroy!
      render json: {deleted: true}
    rescue => exception
      render json: {deleted: false}
    end
  end

  private
  def receiveBody
    JSON.parse(request.body.read, {:symbolize_names => true})
  end

  def items_params
    params.require(:item).permit(:name, :content, :qr_code).merge(user_id: current_user.id)
  end
end