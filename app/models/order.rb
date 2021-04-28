class Order < ApplicationRecord
    has_many :products, dependent: :destroy
    
    accepts_nested_attributes_for :products, allow_destroy: true

    paginates_per 5
end