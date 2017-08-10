class BooksController < ApplicationController
  def new
  end
  def create
  @book = Book.new(params.require(:book).permit(:title, :description,:numberofbooks))

  @book.save
   render plain: @book.inspect
  end

   def show
    @book = Book.find(params[:id])
  end
end
