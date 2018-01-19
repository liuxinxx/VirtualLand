module LandsHelper

  ##将地图的中心点坐标转换为画矩形的时候对应的坐标
  ##相对于0,0
  def latlag_to_bounds(lat,lng,step=0.001)
    bounds = {
      "N"=>(lat+step/2).to_f,"S"=>(lat-step/2).to_f,
      "W"=>(lng-step/2).to_f,"E"=>(lng+step/2).to_f
    }
  end

  ##验证土地是否已经被购买
  def land_buy?(land)
    [land,true]
  end

  def validation(lands)
    validation_lands = land_buy? @lands
    puts validation_lands[1]
    render plain:validation_lands[0].to_s
  end
end
