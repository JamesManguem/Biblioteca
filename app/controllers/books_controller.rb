class BooksController < ApplicationController
  before_action :find_book, only: [ :edit, :update, :destroy]

  def index
    if params[:editorial_id]
      @books = Editorial.find(params[:editorial_id]).books
    elsif params[:author_id]
      @books = Author.find(params[:author_id]).books
    else
      @books = Book.all
    end
  end

  def new
    @book = Book.new
  end


  def create
    @book = Book.create(author_params)
    @book.save
    redirect_to @book

  end





  def show
    if params[:editorial_id]
      @book=Editorial.find(params[:editorial_id]).books.find(params[:id])
    else
      @book = Book.find(params[:id])
    end
  end


  def find_book
    @book = Book.find(params[:id])
  end

end
