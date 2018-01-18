class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name:params[:session][:name]) || User.find_by(email:params[:session][:email])
    if !@user
      flash[:alert] = 'not found user'
      render 'new'
    elsif ! @user.authenticate(params[:session][:password])
      flash[:alert] = 'password is wrong'
      render 'new'
    else
      login @user
      redirect_to lands_show_url
    end
  end

  def destroy
    logout
    render 'new'
  end
end
