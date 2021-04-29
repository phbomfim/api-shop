class Order < ApplicationRecord
    has_many :order_product
    has_many :products, :through => :order_product
    
    accepts_nested_attributes_for :products

    paginates_per 5

    validates :number, :delivery_tax, presence: true    #To validate a order
end