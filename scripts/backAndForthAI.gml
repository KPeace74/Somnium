///backAndForthAI(movespeed, walkoff)

var movespeed = argument0
var walkoff = argument1

if (move == 0) {
    move = 1
}

if (place_meeting(x + hsp, y, obj_solid)) {
    move *= -1
}
if (!walkoff && !position_meeting(x + ((abs(sprite_width)/2) * move), y + (sprite_height/2) + 8, obj_solid)) {
    move *= -1
}
