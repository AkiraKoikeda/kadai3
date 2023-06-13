class BooksController < ApplicationController
  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end


  def show
    @book = Book.find(params[:id])
    @books = Book.new
  end

  def destroy
    book = Book.find(params[:id])
    book.delete
    redirect_to "/books"
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  private

  def book_params
    params.require(:book).permit(:book_name, :caption)
  end
end
