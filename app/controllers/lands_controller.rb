class LandsController < ApplicationController
  include LandsHelper
  def show
    @tag_lat = 10
    @tag_lng = -30
    @bounds = latlag_to_bounds(@tag_lat,@tag_lng)
  end

  def index

  end

  def validation
    @lands = params[:lands]
    validation_lands = land_buy? @lands
    puts validation_lands[1]
    render plain:validation_lands[0].to_s
  end

  private

  def validation_lands_params
    params.require(:land).permit(:lands)
  end
end
