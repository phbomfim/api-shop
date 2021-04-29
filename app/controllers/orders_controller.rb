class OrdersController < ApplicationController
    def index
        @orders = Order.all.page params[:page]
    end

    def new
        @orders = Order.all.page params[:page]
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
        params.require(:order).permit(:number, :delivery_tax, :total_price, products_attributes: [:id, :description, :price])
    end
end