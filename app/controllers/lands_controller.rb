class LandsController < ApplicationController
	include LandsHelper
  def show
  	@tag_lat = 10
  	@tag_lng = -30
  	@bounds = latlag_to_bounds(@tag_lat,@tag_lng)
  end

  def index
  end
end
