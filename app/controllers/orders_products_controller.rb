class OrdersProductsController < ApplicationController
    def index
    end

    def new
        @products = Product.all
        @order = Order.new
    end

    def create
        @order = Order.new(order_params)

        if @order.save
            addPrice
            redirect_to root_path
        else
            render :new
        end
    end

    private

    def order_product_params
        params.require(:order_product).permit(product_ids: [], order_ids: [])
    end

    def order_params
        params.require(:order).permit(:number, :delivery_tax, :total_price, product_ids:[])
    end

    def product_params
        params.require(:product).permit(:promotion_id)
    end

    def addPrice
        @last = Order.last
        n = 0
            @last.products.each do |product|
                n += product.price
            end
        @last.total_price = (n + @last.delivery_tax)
        @last.save
    end
end