class EditorialsController < ApplicationController
  before_action :find_editorial, only: [:show, :edit, :update, :destroy]

  def index
    @editorials = Editorial.all
  end

  def show
  end


  def find_editorial
    @editorial = Editorial.find(params[:id])
  end

end
