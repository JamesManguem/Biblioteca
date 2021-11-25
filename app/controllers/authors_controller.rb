class AuthorsController < ApplicationController
  before_action :find_author, only: [:show, :edit, :update, :destroy]

  def new
    @author = Author.new
  end

  def create
    @author = Author.create(author_params)
    @author.save
    redirect_to @author

  end


  def index
  @authors = Author.all
  end

  def show
  end

  def edit

  end

  def update
    @author.update(author_params)
    redirect_to action: 'index'
  end

  def destroy


    @author.destroy
    redirect_to action: 'index'

  end

  def find_author
    @author = Author.find(params[:id])
  end

  private
  def author_params
    params.require(:author).permit(:name,:language,:nationality)
  end

end
