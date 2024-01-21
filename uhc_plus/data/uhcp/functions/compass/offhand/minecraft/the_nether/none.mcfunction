# Copy item data
data remove storage minecraft:uhcp_compass Compass.hand
data modify storage minecraft:uhcp_compass Compass.hand append from entity @s Inventory[{Slot:-106b}]
data modify storage minecraft:uhcp_compass Compass.hand[0].Slot set value 0b

# Modify compass
data modify storage minecraft:uhcp_compass Compass.hand[0].tag.LodestoneDimension set value "minecraft:the_nether"
data remove storage minecraft:uhcp_compass Compass.hand[0].tag.LodestonePos
data modify storage minecraft:uhcp_compass Compass.hand[0].tag.LodestoneTracked set value 1b

# Replace items
execute in uhcp:main run function uhcp:compass/offhand/minecraft/overworld/replace
