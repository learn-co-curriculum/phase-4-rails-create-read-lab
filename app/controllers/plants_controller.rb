class PlantsController < ApplicationController
  def index
    render json: Plant.all
  end

  def show
    render json: Plant.find(params[:id])
  end

  def create
    new_plant = Plant.create(plant_params)
    render json: new_plant, status: 201
  end

  private

  def plant_params
    params.permit(:name, :image, :price)
  end
end
