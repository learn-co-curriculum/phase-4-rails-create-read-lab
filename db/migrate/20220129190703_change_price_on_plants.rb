class ChangePriceOnPlants < ActiveRecord::Migration[6.1]
  def change
    change_column :plants, :price, :string
  end
end
