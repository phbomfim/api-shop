class ProductSerializer < ActiveModel::Serializer
  attributes :id, :price, :image, :description, :stock,  :offer, :promotion_id

end
