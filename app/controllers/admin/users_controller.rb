class Admin::UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end


  def show
  end

  def find_user
    @user = User.find(params[:id])
  end


end
