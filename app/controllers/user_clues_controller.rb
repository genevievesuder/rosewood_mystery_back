class UserCluesController < ApplicationController

    def index
      render json: UserClue.all, status: :ok
    end

    def create
      params[:user_id] = session[:user_id]
      UserClue.find_or_create_by!(user_clue_params)
      render json: @user, status: :created
    end


    # def destroy_all
    #   @user.clues.each(&:destroy)
    # end

    # def destroy_all
    #   params[:user_id] = session[:user_id]
    #   @all_user_clues = UserClue.find(params[:user_id])
    #   @all_user_clues.destroy
    #   head :no_content
    # end


    # def destroy_all
    #   current_user = session[:user_id]
    #   allClues = UserClue.where(:user_id => current_user).all
    #   allClues.destroy
    #   head :no_content
    # end


    # def destroy_all 
    #   current_user_id = session[:user_id]
    #   all_user_clues = UserClue.where(params[:user_id] current_user_id)
    #   all_user_clues.destroy_all
    #   head :no_content
    # end

    private
      def user_clue_params
        params.permit(:user_id, :clue_id)
      end

end
