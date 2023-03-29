/// @description ??
tile_x = x/o_gm.cell_size
tile_y = y/o_gm.cell_size

var _id = vector_to_id(tile_x,tile_y)

ds_map_add(o_gm.entity_info,_id,self)