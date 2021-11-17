class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end
  def show
  end


  def find_book
    @book = Book.find(params[:id])
  end

end
