class NotesController < ApplicationController
  before_action :find_note, only: [:show, :edit, :update, :destroy]
  def index
    @notes = Note.all
  end
  
  def show
    
  end
  
  def new
    @note=Note.new
  end
  
  def create
    @note=Note.new(note_params)
    if @note.save
        redirect_to @note
      else
        render 'new'
      end
  end
  
  def edit
    
  end
  
  def update
    if @note.update(note_params)
      redirect_to notes_path, notice: 'Successful update'
    else
      render 'edit'
    end
  end
  
  def destroy
    @note.destroy
    logger.warn("====#{@note}")
     redirect_to notes_path, notice: 'Successfully deleted'
    end
  
  private
    def find_note
      @note= Note.find(params[:id])
      end
    
    def note_params
      params.require(:note).permit(:title, :content, :date_at)
      end
  
end

