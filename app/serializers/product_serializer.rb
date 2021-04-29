class ProductSerializer < ActiveModel::Serializer
  attributes :id, :price, :image, :description, :stock,  :offer, :promotion
end
