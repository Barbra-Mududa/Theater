class ProductionsController < ApplicationController
    def index
        render json: Production.all, status: :ok
    end

    def show
    end 
end
