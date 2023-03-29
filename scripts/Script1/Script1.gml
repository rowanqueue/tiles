function vector_to_id(_x,_y){
	var _id = _y*(room_width/o_gm.cell_size) + _x
	return _id
}
function id_to_vector(_id){
	var _y = floor(_id/(room_width/o_gm.cell_size))
	var _x = _id % (room_width/o_gm.cell_size)
	return [_x,_y]
}