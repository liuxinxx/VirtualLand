module LandsHelper

	##将地图的中心点坐标转换为画矩形的时候对应的坐标
	##相对于0,0
	def latlag_to_bounds(lat,lng,step=10.0)
		bounds = {
			"N"=>(lat+step/2).to_f,"S"=>(lat-step/2).to_f,
			"W"=>(lng-step/2).to_f,"E"=>(lng+step/2).to_f
		}
	end
end
