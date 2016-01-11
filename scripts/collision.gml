///collision(Object to Collide With)
var collisionObject = argument0

accelerationspeed = movespeed/15
if (place_meeting(x, y + 1, collisionObject)) {
    if (instance_position(x, y + (sprite_height/2) + 8, obj_solid) != noone) {
        frictionspeed = instance_position(x, y + (sprite_height/2) + 8, obj_solid).frictionspeed
    } else {
        frictionspeed = instance_nearest(x, y + (sprite_height/2) + 8, obj_solid).frictionspeed
    }
} else {
    frictionspeed = airResistance
}

if (place_meeting(x, y + 1, collisionObject)) {
    if (move == 0) {
        if (round(hsp) != 0) {
            hsp = hsp - (sign(hsp) * frictionspeed)
        } else {
            hsp = move * movespeed;
        }
    } else {
        if !(abs(hsp) >= abs(move * movespeed)) {
            hsp += move * accelerationspeed
        } else {
            hsp = move * movespeed;
        }
    }
} else if (!place_meeting(x, y + 1, collisionObject)){
    if (move == 0) {
        if (round(hsp) != 0) {
            hsp = hsp - (sign(hsp) * frictionspeed)
        } else {
            if !(abs(hsp) >= abs(move * movespeed)) {
                hsp += move * accelerationspeed
            } else {
                hsp = move * movespeed;
            }
        }
    } else {
        if !(abs(hsp) >= abs(move * movespeed)) {
            hsp += move * accelerationspeed
        } else {
            hsp = move * movespeed;
        }
    }
} else {
    if !(abs(hsp) >= abs(move * movespeed)) {
        hsp += move * accelerationspeed
    } else {
        hsp = move * movespeed;
    }
}

if (alarm[3] > 0 && cHP > 0) {
    hsp = 8 * sign(x - enemyHitting.x)
    vsp = -1
}

if (place_meeting(x, y + vsp, collisionObject)) { 

    while (!place_meeting(x, y + sign(vsp), collisionObject)) { 
        y += sign(vsp);
    }
    vsp = 0;
     
}

y += vsp

if (place_meeting(x+hsp, y, collisionObject)) {

    while (!place_meeting(x+sign(hsp), y, collisionObject)) {
        x += sign(hsp);
    }
    hsp = 0;
    
}

x += hsp
