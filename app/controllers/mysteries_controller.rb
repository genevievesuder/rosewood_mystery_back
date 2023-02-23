class MysteriesController < ApplicationController

    def index
        render json: Mystery.all, status: :ok
    end
end

#INDEX