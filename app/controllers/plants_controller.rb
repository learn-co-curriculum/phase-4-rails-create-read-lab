class PlantsController < ApplicationController
  def index
    render json: Plant.all
  end

  def show
    render json: Plant.find(params[:id])
  end
end
