class OrderSerializer < ActiveModel::Serializer
    attributes :id, :delivery_tax, :total_price, :products
  end
  