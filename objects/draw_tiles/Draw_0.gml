/// @description ??
var size = 32
draw_set_color(c_gray)
for (var _x = 0; _x < room_width/size; ++_x) {
    draw_line(_x*size,0,_x*(size),room_height)
}

for (var _y = 0; _y < room_height/size; ++_y) {
    draw_line(0,_y*size,room_width,_y*size)
}