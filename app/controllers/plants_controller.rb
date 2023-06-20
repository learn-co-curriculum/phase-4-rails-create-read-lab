class PlantsController < ApplicationController

    #GET plants
    def index
        plants = Plant.all
        render json: plants
    end

    #GET/:id
    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
        # if plant
        #     render json: plant
        # else
        #     render json: { error: "Plant not found"}, status: :not_found
        # end
    end

    #POST
    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end
end
