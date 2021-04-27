class AddPromotionRefToProducts < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :promotion, null: true, foreign_key: true
  end
end
