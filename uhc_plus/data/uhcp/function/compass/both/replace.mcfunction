# Manage compass data
function uhcp:compass/track/hand0/manage
function uhcp:compass/track/hand1/manage

# Replace player's compasses
setblock 0 0 0 minecraft:barrel
data modify block 0 0 0 Items set from storage uhcp:compass Compass.hand
item replace entity @s weapon.mainhand from block 0 0 0 container.0
item replace entity @s weapon.offhand from block 0 0 0 container.1
