class OrderProduct < ApplicationRecord
    belongs_to :order
    belongs_to :product

    #before_save :calculateTotal
    
    private 

    def calculateTotal
        total = order_items.sum{ |item| item.total_price }
    end
end