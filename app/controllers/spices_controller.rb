class SpicesController < ApplicationController

    def index
        render json: Spice.all
    end

    def create
        render json: Spice.create(spice_permit_params), status:  :created
    end

    def update
        Spice.find(params[:id]).update(spice_permit_params)
        render json: Spice.find(params[:id])
    end

    def destroy
        Spice.find(params[:id]).destroy
    end






    private

    def spice_permit_params
        params.permit(:title, :image, :description, :notes, :rating)
    end
end
