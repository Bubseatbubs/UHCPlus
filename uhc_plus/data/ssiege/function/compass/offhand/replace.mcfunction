# Manage compass data
function uhcp:compass/track/hand0/manage

# Replace player's compass
item replace block 0 0 0 container.0 with minecraft:air
data modify block 0 0 0 Items set from storage uhcp:compass Compass.hand
item replace entity @s weapon.offhand from block 0 0 0 container.0
