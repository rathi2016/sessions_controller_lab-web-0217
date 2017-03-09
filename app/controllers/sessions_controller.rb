class SessionsController < ApplicationController

  def new
  end

  def create

    if (params[:name]== nil)||(params[:name].empty?)
      redirect_to controller: 'sessions', action:'new'
    elsif session[:name] = params[:name]
      redirect_to("/")
    end
  end


  def destroy
  session.delete(:name)
  redirect_to controller: 'sessions', action:'new'
  end

end
