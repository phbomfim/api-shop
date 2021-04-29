class Product < ApplicationRecord
    has_many :order_product
    has_many :order, :through => :order_product
    
    belongs_to :promotion, optional: true
    
    accepts_nested_attributes_for :promotion
end
