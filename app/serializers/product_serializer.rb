class ProductSerializer < ActiveModel::Serializer
  attributes :id, :price, :image, :description, :stock, :promotion
end
