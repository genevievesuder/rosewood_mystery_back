class UserCluesController < ApplicationController

    def index
        render json: UserClue.all, status: :ok
    end

    def create
        params[:user_id] = session[:user_id]
        UserClue.find_or_create_by!(user_clue_params)
        render json: @user, status: :created
      end
    
    private
      def user_clue_params
        params.permit(:user_id, :clue_id)
      end

end
