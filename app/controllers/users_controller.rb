class UsersController < ApplicationController
    # before_action :find_user, only: [:destroy, :update] ##Removed update
    skip_before_action :authorized_user, only: [:create]
    
      def index
        render json: User.all, status: :ok
      end
    
      def show
        render json: @user, status: :ok
      end
    
      def create
        new_user = User.create!(user_params)
        session[:user_id] = new_user.id
          render json: new_user, status: :created
      end
    
      def update
        @user.update!(user_params)
        render json: @user, status: :ok
      end
    
      def destroy
        @user.destroy
        head :no_content
      end
    
      private
    
        # def find_user
        #   @user = User.find(params[:id])
        # end
    
        def user_params
          params.permit(:password, :email, :character_name)
        end
    end
    

#INDEX CREATE SHOW UPDATE DELETE