class AddDetailsToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :price, :float
    add_column :products, :image, :string
  end
end
