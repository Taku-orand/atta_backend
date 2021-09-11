class ItemsController < ApplicationController
  def index
    
  end

  def show
    item_id = params[:id]

    begin
      item = Item.find(item_id)
      render json: { item: {
        content: item,
        found: true
        }
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
    item = receiveBody[:item]
    new_item = Item.new(item)

    begin
      new_item.save!
      render json: {created: true}
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
end
