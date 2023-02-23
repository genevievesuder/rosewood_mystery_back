class UsersController < ApplicationController

    def index
        render json: User.all, status: :ok
    end


end

#INDEX CREATE SHOW UPDATE DELETE