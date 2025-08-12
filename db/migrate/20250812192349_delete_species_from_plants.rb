class DeleteSpeciesFromPlants < ActiveRecord::Migration[6.1]
  def change
    remove_column :plants, :species
  end
end
