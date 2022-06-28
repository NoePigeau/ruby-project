class HomeController < ActionController::Base

    def index
        @vehicles = Vehicle.all
    end

    def get_consumption
        @vehicle = Vehicle.find(params[:vehicle]['id'])
        @kilometers = params[:kilometers]
    end
end
