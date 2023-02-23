class CluesController < ApplicationController

    def index
        render json: Clue.all, status: :ok
    end

end

#INDEX.. or include in book serializer?