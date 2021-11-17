class AuthorsController < ApplicationController
  before_action :find_author, only: [:show, :edit, :update, :destroy]

  def index
  @authors = Author.all
  end

  def show
  end

  def find_author
    @author = Author.find(params[:id])
  end

end
