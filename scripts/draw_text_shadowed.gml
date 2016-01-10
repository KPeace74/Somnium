///draw_text_shadowed(x, y, string, shadow width, text color, shadow color)
var xPos = argument0
var yPos = argument1
var text = argument2
var width = argument3
var textColor = argument4
var shadowColor = argument5
draw_set_color(shadowColor)
draw_text(xPos - width, yPos, text)
draw_text(xPos + width, yPos, text)
draw_text(xPos, yPos + width, text)
draw_text(xPos, yPos - width, text)
draw_set_color(textColor)
draw_text(xPos, yPos, text)


