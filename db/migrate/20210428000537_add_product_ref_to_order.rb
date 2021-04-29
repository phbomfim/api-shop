class AddProductRefToOrder < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :product, null: true, foreign_key: true
    add_column :orders, :total_price, :float

    change_table :products do |t|
      t.belongs_to :order
    end
  end 
end
