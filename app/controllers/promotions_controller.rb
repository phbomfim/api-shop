class PromotionsController < ApplicationController
    def index
        @promotions = Promotion.order(created_at: :desc)
    end

    def new
        @promotion = Promotion.new
    end

    def create
        @promotion = Promotion.new(promotion_params)
        if @promotion.save
            redirect_to root_path
        else
            render :new
        end
    end

    def delete
    end

    private

        def promotion_params
            params.require(:promotion).permit(:base, :value)
        end
end