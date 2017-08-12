class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(username: params[:username])
  if @user && User.authenticate(@user.password, params[:password])
    login(@user)
    redirect "/users/#{@user.id}"
  else
    erb :'/sessions/new'
  end
  end
  def destroy

  end
end
