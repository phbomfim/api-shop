class Order < ApplicationRecord
    has_many :order_product
    has_many :products, :through => :order_product
    
    accepts_nested_attributes_for :products

    paginates_per 5
end