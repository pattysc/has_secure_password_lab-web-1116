class SessionsController < ApplicationController

  def create
    @user = User.find_by(name: params[:name])

    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to '/users/show'
    else
      redirect_to '/users/new'
    end
  end
end
