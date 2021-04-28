module Admin
    class Api::V1::ProductsController < ApiController
        before_action :set_product
        
        def index
            render json: @product
        end

        private

            def set_product
                @product = []               #Create array to include Product variables
                Product.all.each do |p|
                    if p.stock > 0          #Check if stock is not empty
                        @product.push(p)    #Add to array
                    end
                end
            end
    end
end