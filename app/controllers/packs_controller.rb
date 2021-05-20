class PacksController < ApplicationController

    def index
        packs = Pack.all 
        render json: packs, except: [:created_at, :updated_at]
    end

    def show 
        pack = Pack.find(params[:id])
        render json: pack 
    end

    def create
        pack = Pack.create!(pack_params)
        render json: pack
    end

    def update 
        pack = Pack.find(params[:id])
        pack.update!(pack_params)
    end

    def destroy 
        pack = Pack.find(params[:id])
        pack.destroy
    end



    private

    def pack_params
        params.require(:pack).permit(:user_id, :genre_id, :name, :description, :image, :preview, :link, :price)
    end
end
