module Admin
    class Api::V1::OrdersController < ApiController
        before_action :set_order
        
        def index
            render json: @order
        end

        private

            def set_order
                @order = Order.all
            end
    end
end