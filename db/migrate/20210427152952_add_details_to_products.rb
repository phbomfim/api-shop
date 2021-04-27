class AddDetailsToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :price, :float
    add_column :products, :image, :string
    add_column :products, :offer, :float
  end
end
