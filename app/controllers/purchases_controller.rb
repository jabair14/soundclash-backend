class PurchasesController < ApplicationController

    def index
        purchases = Purchase.all

        render json: purchases, except: [:created_at, :updated_at]

    end

    def show

        purchase = Purchase.find(params[:id])

        render json: purchase 
    end

    def create
        purchase = Purchase.create!(purchase_params)
        render json: purchase
    end

    def update 
        purchase = Purchase.find(params[:id])
        purchase.update!(purchase_params)
    end

    private

    def purchase_params
        params.require(:purchase).permit(:user_id, :pack_id)
    end
end
