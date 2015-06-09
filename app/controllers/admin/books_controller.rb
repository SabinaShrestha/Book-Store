class Admin::BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def create
    @book = Book.new
    if @book.save
      redirect_to admin_books_path
    else
      render :new
    end
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :upload_date, :price)
  end

end