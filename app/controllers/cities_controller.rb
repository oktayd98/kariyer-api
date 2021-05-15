class CitiesController < ApplicationController
    def index
        render json: City.all.as_json
    end
end
