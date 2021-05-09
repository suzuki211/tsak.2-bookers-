class BooksController < ApplicationController
  def index
   @books = Book.all
   @books = Book.new
   book = Book.new(book_params)
   book.save
   redirect_to books_path
  end

  def show
  end

  def new
  end

  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
