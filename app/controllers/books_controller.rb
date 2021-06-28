class BooksController < ApplicationController
  def index
    @books = current_user.created_books.includes(:author)
  end

  def external
    @books = current_user.created_books.external
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book =current_user.created_books.build
  end

  def create
    @book = current_user.created_books.build(book_params)

    if @book.save
      redirect_to @book
    else
      render :new
    end

  end

  def edit
   @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to @book
    else
      render :edit
    end

  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private 

  def book_params
    params.require(:book).permit(:name, :amount, :group_id)
  end
end

