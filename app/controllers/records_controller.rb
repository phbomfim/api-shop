class RecordsController < ApplicationController
    def index
    end

    def new
        @record = Record.new
    end

    def create
        @record = Record.new(record_params)
        if @record.save
            redirect_to root_path
        else
            render :new
        end
    end

    def delete
    end

    private

        def record_params
            params.require(:record).permit(:order_id, :product_id, :amount)
        end
end