class UserHintsController < ApplicationController

    def index
        render json: UserHint.all, status: :ok
    end

    def create
        params[:user_id] = session[:user_id]
        UserHint.find_or_create_by!(user_hint_params)
        render json: @user, status: :created
        end
    
    private
        def user_hint_params
        params.permit(:user_id, :hint_id)
        end
    
end
