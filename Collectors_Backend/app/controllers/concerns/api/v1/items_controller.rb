class Api::V1::ItemsController < ApplicationController
    before_action :set_item, only: [:show, :update, :destroy]

    def index 
        items = Item.all 

        render json: items
    end 

    def show 

        render json: @item
    end 

    def create 
        @item = Item.create(item_params)

        render json: @item
    end 

    def update 
        @item = Item.update(item_params)

        render json: @item
    end 
    
    def destroy 
        @item.delete 

        render json: {itemId: item.id}
    end

    private 

    def set_item
        @item = Item.find_by(params[:id])
    end

    def item_params 
        params.require(:items).permit(:name, :description, :worth, :collection_id)
    end 
end
