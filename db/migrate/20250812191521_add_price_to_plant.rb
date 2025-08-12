class AddPriceToPlant < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :price, :decimal
  end
end
