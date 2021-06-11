class Product < ApplicationRecord
    belongs_to :order
    
    belongs_to :promotion, optional: true   #Prodcuts should have a promotion
    
    accepts_nested_attributes_for :promotion    #To use promotion attributes

    validates :description, :stock, :price, presence: true    #To validate a product
    validates_numericality_of :stock, :price, :greater_than_or_equal_to => 0  #Only accepts positives prices and stock
end
