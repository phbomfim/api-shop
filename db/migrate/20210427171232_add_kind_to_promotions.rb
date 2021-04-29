class AddKindToPromotions < ActiveRecord::Migration[6.1]
  def change
    add_column :promotions, :kind, :string, default: 'buy-x-take-y'
  end
end
