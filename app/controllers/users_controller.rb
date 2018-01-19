class UsersController < ApplicationController
  before_action :set_user
  def new
    @user = User.new
  end

  def create
    respond_to do |format|
      @user = User.new(user_params)
      unless verify_rucaptcha?(@user)
       flash[:alert] =  'Verification Code error'
      else
        unless @user.save
          flash[:alert] =  @user.errors.full_messages
        else
         flash[:notice]= 'success!'
         login user
         redirect_to lands_show_url(params[:id]),notice: "Login success!"
        end
      end
      format.js{}
    end
  end

  private
  def set_user
    @user = User.new(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:name,:email,:eth_address,:password,:password_confirmation)
  end
end
