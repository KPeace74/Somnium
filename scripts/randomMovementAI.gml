///randomMovementAI(speed, walk off)

var movespeed = argument0
var walkoff = argument1

if (is_undefined(moveTimer)) {
    moveTimer = 60
}

if (moveTimer == 0) {
    move = round(random_range(-1, 1))
    moveTimer = 60
} else {
    moveTimer--
}

if (place_meeting(x + hsp, y, obj_solid)) {
    move *= -1
}

/*switch (move) {
    case -1:
    hsp = -movespeed
    break;
    case 0:
    hsp = 0
    break;
    case 1:
    hsp = movespeed
    break;
}*/

if (hsp >= 0) {
    image_xscale = 1
} else if (hsp <= 0) {
    image_xscale = -1
}

if (!walkoff) {
    if (onGround && move != 0) {
        if (!position_meeting(x + ((abs(sprite_width)/2) * move), y + (sprite_height/2) + 8, obj_solid)) {
            move *= -1
        }
    }
}
