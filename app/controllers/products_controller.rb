class ProductsController < ApplicationController
    def index
        @products = Product.order(created_at: :desc)
    end

    def terms
    end

    def privacy
    end
end