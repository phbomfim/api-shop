class ProductsController < ApplicationController
    def index
        @products = Product.order(created_at: :desc)
    end

    def new
    end

    def create
    end

    def delete
    end
end