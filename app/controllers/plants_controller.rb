class PlantsController < ApplicationController

        # GET /plants
        def index 
            plants = Plant.all
            render json: plants
        end    
            # GET /plants  by id
        def show
            plant = Plant.find(params[:id])
            if plant
            render json: plant
            else
                render json: { error: "Plant not found" }, status: :not_found
        end    
            # POST /plants
        def create
        plant = Plant.new(name: params[:name], image: params[:image], price: params[:price])  
        render json: plant, status: :created
        end    
    end
end
