class NewCustomersController < ApplicationController

    def index
        render json: NewCustomer.all, status: :ok
    end

end

#INDEX CREATE SHOW UPDATE DELETE