/// @description ??
if(dead){
	return
}

if(o_gm.player_turn){
	if(keyboard_check_pressed(ord("D"))){
		tile_x+=1
		var new_id = vector_to_id(tile_x,tile_y)
		if(ds_map_exists(o_gm.tile_info,new_id)){
			tile_x-=1
		}else if(ds_map_exists(o_gm.entity_info,new_id)){
			var _entity = o_gm.entity_info[? new_id]
			ds_map_delete(o_gm.entity_info,new_id)
			instance_destroy(_entity)
			o_gm.player_turn = false
		}
		else{
			o_gm.player_turn = false
		}
	}
	if(keyboard_check_pressed(ord("A"))){
		tile_x-=1
		var new_id = vector_to_id(tile_x,tile_y)
		if(ds_map_exists(o_gm.tile_info,new_id)){
			tile_x+=1
		}else if(ds_map_exists(o_gm.entity_info,new_id)){
			var _entity = o_gm.entity_info[? new_id]
			ds_map_delete(o_gm.entity_info,new_id)
			instance_destroy(_entity)
			o_gm.player_turn = false
		}else{
			o_gm.player_turn = false
		}
	}
	if(keyboard_check_pressed(ord("W"))){
		tile_y-=1
		var new_id = vector_to_id(tile_x,tile_y)
		if(ds_map_exists(o_gm.tile_info,new_id)){
			tile_y+=1
		}else if(ds_map_exists(o_gm.entity_info,new_id)){
			var _entity = o_gm.entity_info[? new_id]
			ds_map_delete(o_gm.entity_info,new_id)
			instance_destroy(_entity)
			o_gm.player_turn = false
		}else{
			o_gm.player_turn = false
		}
	}
	if(keyboard_check_pressed(ord("S"))){
		tile_y+=1
		var new_id = vector_to_id(tile_x,tile_y)
		if(ds_map_exists(o_gm.tile_info,new_id)){
			tile_y-=1
		}else if(ds_map_exists(o_gm.entity_info,new_id)){
			var _entity = o_gm.entity_info[? new_id]
			ds_map_delete(o_gm.entity_info,new_id)
			instance_destroy(_entity)
			o_gm.player_turn = false
		}else{
			o_gm.player_turn = false
		}
	}
}