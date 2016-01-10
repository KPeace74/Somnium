///targetingMovementAI(movespeed, jumpspeed, target object, walk off height)
//walk off height = height at which they are willing to walk off of a block. if 0, they won;t walk off of a block
//if 10 (for example) will walk off if ground pixels below
//32 = 1 wall object
var movespeed = argument0
var jumpspeed = argument1
var target = argument2
var walkoff = argument3
var canWalkOff = false

if (target.x > x + (5/frictionspeed)) {
    move = 1
} else if (target.x < x - (5/frictionspeed)) {
    move = -1
} else {
    move = 0
}

//hsp = movespeed * dir

if ((place_meeting(x + hsp, y, obj_solid) && onGround) || (place_meeting(x + (sign(x - target.x) * movespeed), y, obj_solid))) {
    vsp = -jumpspeed
}

if (hsp > 0) {
    image_xscale = 1
} else if (hsp < 0) {
    image_xscale = -1
}

if (walkoff == 0) {
    if (onGround && move != 0) {
        if (!position_meeting(x + ((abs(sprite_width)/2) * move), y + (sprite_height/2) + 8, obj_solid)) {
            move = 0
        }
    }
} else {
    if (onGround && move != 0) {
        if (!position_meeting(x + ((abs(sprite_width)/2) * move), y + (sprite_height/2) + 8, obj_solid)) {
            for (i = 0; i < walkoff; i++) {
                if (position_meeting(x + ((abs(sprite_width)/2) * move), y + (sprite_height/2) + 8 + i, obj_solid)) {
                    canWalkOff = true
                } else {
                    if (i >= walkoff) {
                        canWalkOff = false
                    }
                }
            }
            if (canWalkOff) {
                move = move
            } else {
                move = 0
            }
        }
    }
}
