/// @description ??
if(player_turn == false){
	if(dude_index < instance_number(o_some_dude)){
		var _dude = instance_find(o_some_dude,dude_index)
		if (random(100) < 50){
			_dude.tile_y+=1
		}else{
			if (o_player.tile_x < _dude.tile_x){
				_dude.tile_x-=1
			}else{
				_dude.tile_x+=1
			}
		}
		
		if(_dude.tile_x == o_player.tile_x and _dude.tile_y == o_player.tile_y){
			o_player.dead = true
		}
		dude_index++
	}else{
		dude_index = 0
		turn_counter+=1
		player_turn = true
	}
}