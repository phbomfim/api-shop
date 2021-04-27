class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :number
      t.float :delivery_tax

      t.timestamps
    end
  end
end
