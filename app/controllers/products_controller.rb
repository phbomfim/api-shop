class ProductsController < ApplicationController
    def index
        @products = Product.order(created_at: :desc)
    end

    def new
        @promos = Promotion.all
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)
        if @product.save
            redirect_to root_path
        else
            render :new
        end
    end

    def delete
    end

    private

        def product_params
            params.require(:product).permit(:description, :stock, :price, :image, :offer, :promotion_id)
        end
end