class HintersController < ApplicationController

    def index
        render json: Hinter.all, status: :ok
    end

end

#INDEX, SHOW, UPDATE DELETE