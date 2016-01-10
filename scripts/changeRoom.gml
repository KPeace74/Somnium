///changeRoom(speed, room)

var speeed = argument0
var rm = argument1
if (instance_exists(oSleepControl)) {
    with (instance_nearest(0, 0, oSleepControl)) {
        fading = true
        changeSpeed = speeed
        targetRoom = rm
            targX = instance_nearest(0, 0, oRoomSpawn).x
            targY = instance_nearest(0, 0, oRoomSpawn).y
        global.roomChanging = true
    }
}
