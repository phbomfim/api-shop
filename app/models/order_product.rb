class OrderProduct < ApplicationRecord
    belongs_to :order
    belongs_to :product

    #accepts_nested_attributes_for :products
    #accepts_nested_attributes_for :orders
end