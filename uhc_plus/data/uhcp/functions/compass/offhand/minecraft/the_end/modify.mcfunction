# Copy item data
data remove storage minecraft:uhcp_compass Compass.hand
data modify storage minecraft:uhcp_compass Compass.hand append from entity @s Inventory[{Slot:-106b}]
data modify storage minecraft:uhcp_compass Compass.hand[0].Slot set value 0b

# Modify compass
data modify storage minecraft:uhcp_compass Compass.hand[0].tag.LodestoneDimension set value "minecraft:the_end"
execute store result storage minecraft:uhcp_compass Compass.hand[0].tag.LodestonePos.X int 1 run data get storage minecraft:uhcp_compass Compass.Pos[0]
data modify storage minecraft:uhcp_compass Compass.hand[0].tag.LodestonePos.Y set value 255
execute store result storage minecraft:uhcp_compass Compass.hand[0].tag.LodestonePos.Z int 1 run data get storage minecraft:uhcp_compass Compass.Pos[2]

# Replace items
execute in uhcp:main run function uhcp:compass/offhand/minecraft/the_end/replace
