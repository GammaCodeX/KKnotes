class NotesController < ApplicationController
  before_action :force_login

  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])

    if @note.save
      redirect_to notes_path, notice: "Nodeark redigeret"
    else
      render "edit"
    end
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      redirect_to notes_path, notice: "Noderne til #{@note.name} er blevet gemt"
    else
      render "new"
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to notes_path, notice: "Noderne til #{@note.name} er blevet slettet"
  end

  private

  def note_params
    params.require(:note).permit(:data, :name, :composer, :canview, :arrenged_by, :text_by, :published_by, :notes)
  end
end
