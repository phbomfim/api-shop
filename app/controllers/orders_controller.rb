class OrdersController < ApplicationController
    def index
        @orders = Order.all.page params[:page]
    end

    def new
        @products = Product.all
        @order = Order.new
    end

    def create
        @order = Order.new(order_params)
        if @order.save
            redirect_to root_path
        else
            render :new
        end
    end

    private

    def order_params
        params.require(:order).permit(:number, :delivery_tax, :total_price, product_ids:[])
    end

    def product_params
        params.require(:product).permit(:promotion_id)
    end
end