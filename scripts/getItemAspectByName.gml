///getItemAspectByName(aspect, "name")
var itemName = argument1 //String
var aspect = argument0
for (i = 0; i <= totalItems; i++) {
    if (itemName == global.items[i, 0]) {
        return global.items[i, aspect]
        i = maxInvSlots
    }
}
