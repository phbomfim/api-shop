class Order < ApplicationRecord
    has_many :products
    
    accepts_nested_attributes_for :products

    paginates_per 5     #To define 5 orders per page

    validates :number, :delivery_tax, presence: true    #To validate a order
end