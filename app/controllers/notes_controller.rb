class NotesController < ApplicationController
  before_filter :retrieve_book, only: [:create, :destroy]

  def create
    @note = @book.notes.new(params[:note])
    if @note.save
      redirect_to @book, notice: "Note added"
    else
      redirect_to @book, alert: "Unable to add note"
    end
  end

  def destroy
    @note = @book.notes.find(params[:id])
    @note.destroy
    redirect_to @book, notice: "Note deleted"
  end

  private

  def retrieve_book
    @book = Book.find(params[:book_id])
  end
end
