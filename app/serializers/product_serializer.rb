class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :stock, :price
end