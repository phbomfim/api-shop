class HomeController < ApplicationController
    def index
        @products = Product.order(published_at: :desc)
    end

    def terms
    end

    def privacy
    end
end