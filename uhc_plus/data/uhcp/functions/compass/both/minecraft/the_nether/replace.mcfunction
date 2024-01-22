# Replace player's compasses
setblock 0 -64 0 minecraft:barrel
data modify block 0 -64 0 Items set from storage minecraft:uhcp_compass Compass.hand
item replace entity @s weapon.mainhand from block 0 -64 0 container.0
item replace entity @s weapon.offhand from block 0 -64 0 container.1
