class PlantsController < ApplicationController
  def index
    render json: Plant.all
  end

  def show
    plant = Plant.find(params[:id])
    render json: plant
  end

  def create
    plant = Plant.create(plant_params)
    render json: plant, status: :created
  end

  def plant_params
    params.permit(:name, :image, :price)
  end
end
