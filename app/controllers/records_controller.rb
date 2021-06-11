class RecordsController < ApplicationController
    def index
        @records = Record.all
    end

    def new
        @record = Record.new
    end

    ## FALA INCREMENTAR UM ARRAY DE PRODUCT_IDS EM UMA ORDER
    ## ATUALMENTE CADA PRODUTO SÓ PODE FICAR EM UMA ORDER
    ## APÓS A CRIAÇÃO DA ORDER/RECORD, REALIZAR A ATUALIZAÇÃO DO STOCK

    def create
        amount = record_params[:amount].to_f
        @product = Product.find(record_params[:product_id])

        if @product.stock >= amount ##Caso exista quantidade suficiente

            if record_params[:order_id] == "new"
                @order = Order.create(number: record_params[:number], delivery_tax: record_params[:delivery_tax])
            else  
                @order = Order.find(record_params[:order_id])
            end

            price = totalPrice(@order.total_price, @product.price, amount, @order.delivery_tax)
            
            products_ids = Array.new

            if !@order.product_ids.empty?
                @order.product_ids.each do |o|
                    products_ids.push(o)
                end
            end

            products_ids.push(@product.id)

            @order.update(product_ids: products_ids, total_price: price)

            @record = Record.new(order_id: @order.id, product_id: @product.id, amount: amount)
            
            if @record.save
                redirect_to root_path
            else
                render :new
            end
        else
            
            puts "Quantidade insuficiente! "
            
        end
    end

    def delete
    end

    private

        def record_params
            params.require(:record).permit(:order_id, :product_id, :amount, :number, :delivery_tax)
        end

        def totalPrice(n0, n1, n2, n3)
            resultado = 0
            resultado = n0.to_f + (n1*n2) 
            resultado += n3
            return resultado
        end
end