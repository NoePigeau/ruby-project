class VehiclesController < ActionController::Base

    def index
        @vehicles = Vehicle.all
    end

    def show
        @vehicle = Vehicle.find(params[:id])
    end

    def new
        @vehicle = Vehicle.new
    end
    
    def create
        @vehicle = Vehicle.new(params_vehicle)

        if @vehicle.save
            redirect_to vehicles_path        
        else
            render :new   
        end

        
    end

    private 

    def params_vehicle
        params.require(:vehicle).permit(:name, :consumption)
    end
end
