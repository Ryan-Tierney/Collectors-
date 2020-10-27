class Api::V1::CollectionsController < ApplicationController
    before_action :set_collection, only: [:show, :update, :destroy]

    def index 
        collections = Collection.all

        render json: collections
    end 

    def show 
        render json: @collection
    end 

    def create 
        collection = Collection.Create(collection_params)

        render json: @collection 
    end 

    def update 
        @collection.update(collection_params)

        render json: @collection 
    end 

    def destroy 
        @collection.delete 

        render json: {collectionId: collection.id}
    end

    private 

    def set_collection 
        @collection = Collection.find(params[:id])
    end 

    def collection_params 
        params.require(:collections).permit(:title, :description, :total_worth)
    end 

end
