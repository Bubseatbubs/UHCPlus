# Replace player's compass
setblock 0 -64 0 minecraft:barrel
data modify block 0 -64 0 Items set from storage minecraft:uhcp_compass Compass.hand
item replace entity @s weapon.mainhand from block 0 -64 0 container.0