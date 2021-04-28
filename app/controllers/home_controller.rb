class HomeController < ApplicationController
    def index
        @products = Product.order(published_at: :desc)
        @orders = Order.order(published_at: :desc)
    end

    def terms
    end

    def privacy
    end

    private

        def description
            @order_product_id = Order.find_by(params[:id]).product_id
            @product = Product.find_by(params[:id])
        end
end