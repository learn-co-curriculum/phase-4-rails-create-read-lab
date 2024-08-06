class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :image
      t.decimal :price

      t.timestamps
    end
  end
end
