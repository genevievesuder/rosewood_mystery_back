class NotesController < ApplicationController
    before_action :find_note, only: [:show, :update, :destroy]
    
    def index
        render json: Note.all, status: :ok
    end
    
    def show
        render json: @note, status: :ok
    end
    
    def create 
        params[:user_id] = session[:user_id]
        render json: Note.create!(note_params), status: :created
    end
    
    def update
        @note.update!(note_params)
        render json: @note, status: :ok
    end
    
    def destroy
        @note.destroy
        head :no_content
    end
    
    
    private
    def find_note
        @note = Note.find(params[:id])
    end
    
    def note_params 
        params.permit(:note, :user_id)
    end
end
