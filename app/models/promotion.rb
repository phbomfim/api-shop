class Promotion < ApplicationRecord
    validates :base, :value, presence: true    #To validate a product
end
