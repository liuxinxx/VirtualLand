class LandsController < ApplicationController
  include LandsHelper
  def show
    @lands = Land.find_by(:user_id => current_user.id)
    @tag_lat = 39.9163854444
    @tag_lng = 116.3971424103
    @bounds = latlag_to_bounds(@tag_lat,@tag_lng)
  end

  def index

  end

  def create
    respond_to do |format|
      @lands = params[:land]
      current_user.update("land_hash" => @lands.split('='))
      # puts "#{current_user.errors.full_messages}"
      flash[:notice]= 'success!'
      format.js{}
    end
  end

  def validation
    land = params[:land]
    validation_lands = land_buy? land
    puts validation_lands[1]
    render plain:validation_lands
  end

  private

  def create_params
    params.require(:lands).permit(:lands)
  end

  def validation_lands_params
    params.require(:land).permit(:land)
  end
end
