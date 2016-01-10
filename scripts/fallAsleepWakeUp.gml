///fallAsleepWakeUp(Fade Speed)

var speeed = argument0
if (instance_exists(oFallAsleepWakeUp)) {
    with (instance_nearest(0, 0, oFallAsleepWakeUp)) {
        fading = true
        changeSpeed = speeed
        global.fallingAsleep = true
    }
}
