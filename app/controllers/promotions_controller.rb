class PromotionsController < ApplicationController
    def index
        @promotions = Promotion.order(created_at: :desc)
    end

    def new
    end

    def create
    end

    def delete
    end
end