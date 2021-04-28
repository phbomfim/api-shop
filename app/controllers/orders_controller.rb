class OrdersController < ApplicationController
    def index
        @orders = Order.all.page params[:page]
    end

    def terms
    end

    def privacy
    end

    private

    def order_params
        params.require(:order).permit(:number, :delivery_tax, :total_price, products_attributes: [:id, :description, :price])
    end

end