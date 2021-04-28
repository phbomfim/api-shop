module Admin
    class Api::V1::ProductsController < ApiController
        before_action :set_product
        
        def show
            render json: @product
        end

        private

            def set_product
                @product = Product.all
                @product.each do |p|
                    if p.stock > 0
                        @product = p
                    end
                end
            end
    end
end