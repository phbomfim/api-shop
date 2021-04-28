class Product < ApplicationRecord
    belongs_to :promotion, optional: true
    belongs_to :order, optional: true
    
end
