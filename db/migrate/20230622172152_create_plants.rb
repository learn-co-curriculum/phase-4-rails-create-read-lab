class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :image
      t.integer :price
      t.string :controller
      t.string :plant

      t.timestamps
    end
  end
end
