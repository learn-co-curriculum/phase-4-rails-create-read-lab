class AddImageToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :image, :string
  end
end
