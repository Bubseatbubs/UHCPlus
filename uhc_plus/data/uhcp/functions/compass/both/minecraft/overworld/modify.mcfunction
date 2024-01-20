# Copy item data
data remove storage minecraft:uhcp_compass Compass.hand
data modify storage minecraft:uhcp_compass Compass.hand append from entity @s SelectedItem
data modify storage minecraft:uhcp_compass Compass.hand[0].Slot set value 0b
data modify storage minecraft:uhcp_compass Compass.hand append from entity @s Inventory[{Slot:-106b}]
data modify storage minecraft:uhcp_compass Compass.hand[1].Slot set value 1b

# Modify compasses
data modify storage minecraft:uhcp_compass Compass.hand[0].tag.LodestoneDimension set value "minecraft:overworld"
data modify storage minecraft:uhcp_compass Compass.hand[1].tag.LodestoneDimension set value "minecraft:overworld"
execute store result storage minecraft:uhcp_compass Compass.hand[0].tag.LodestonePos.X int 1 run data get storage minecraft:uhcp_compass Compass.Pos[0]
data modify storage minecraft:uhcp_compass Compass.hand[1].tag.LodestonePos.X set from storage minecraft:uhcp_compass Compass.hand[0].tag.LodestonePos.X
data modify storage minecraft:uhcp_compass Compass.hand[0].tag.LodestonePos.Y set value -64
data modify storage minecraft:uhcp_compass Compass.hand[1].tag.LodestonePos.Y set value -64
execute store result storage minecraft:uhcp_compass Compass.hand[0].tag.LodestonePos.Z int 1 run data get storage minecraft:uhcp_compass Compass.Pos[2]
data modify storage minecraft:uhcp_compass Compass.hand[1].tag.LodestonePos.Z set from storage minecraft:uhcp_compass Compass.hand[0].tag.LodestonePos.Z

# Replace items
execute in uhcp:main run function uhcp:compass/both/minecraft/overworld/replace
