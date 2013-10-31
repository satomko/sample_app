class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		#HANDLE SUCCESSFUL SAVE
  		flash[:success] = "Welcome to the Sample App"
  		redirect_to @user 
  	else
  		render 'new'
  	end
  end

  def show
  	@user = User.find(params[:id])
  end
end
