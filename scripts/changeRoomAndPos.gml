///changeRoomAndPos(speed, room, x, y)

var speeed = argument0
var rm = argument1
var xPos = argument2
var yPos = argument3
if (instance_exists(oSleepControl)) {
    with (instance_nearest(0, 0, oSleepControl)) {
        fading = true
        changeSpeed = speeed
        targetRoom = rm
        targX = xPos
        targY = yPos
        global.roomChanging = true
        usingDoor = true
    }
}
