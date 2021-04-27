class CreatePromotions < ActiveRecord::Migration[6.1]
  def change
    create_table :promotions do |t|
      t.integer :base
      t.integer :value

      t.timestamps
    end
  end
end
