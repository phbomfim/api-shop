class Promotion < ApplicationRecord
    validates :base, :value, presence: true    #To validate a product

    validates_numericality_of :base, :value, :greater_than => 0     #To don't accepts negative values
    validates_numericality_of :value, :greater_than => :base        #Value must be greather than base
end
