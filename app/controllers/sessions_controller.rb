class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to "/welcome"
    else
      redirect_to root_path
    end
  end

  def show
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end
