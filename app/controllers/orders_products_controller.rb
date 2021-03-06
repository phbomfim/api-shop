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
            #Call like after_save to add total_price on order
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

    #Function to add sum value to total_price field
    def addPrice
        @last = Order.last      #Get last order (like a after save)
        n = 0
            @last.products.each do |product|    #Run to all products in this order
                n += product.price              #Just sum values
            end
        @last.total_price = (n + @last.delivery_tax)    #Multiply with delivery_tax
        @last.save
    end
end