class PurchasesController < ApplicationController

    def index
        purchases = Purchase.all

        render json: purchases, except: [:created_at, :updated_at]

    end

    def show

        purchase = Purchase.find(params[:id])

        render json: purchase 
    end
end
