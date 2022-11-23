class ProductionsController < ApplicationController
    wrap_parameters format: []
    
    def index
        render json: Production.all, status: :ok
    end

    def show
        production = Production.find_by(id:params[:id])
        if production
            render json: production, status: :ok
        else
            render json: {error: 'production not found'}, status: :not_found
        end
    end 

    def create
        production = Production.create(params)
        render json: production, status: :created
    end

    private

    def production_params
        params.perit(:title, :genre, :budget, :image, :director, :ongoing)
    end
end
