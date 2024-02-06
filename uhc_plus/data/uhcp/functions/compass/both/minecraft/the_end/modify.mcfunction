# Modify compasses
data modify storage uhcp:compass Compass.hand[].tag.LodestoneDimension set value "minecraft:the_end"
execute store result storage uhcp:compass Compass.hand[].tag.LodestonePos.X int 1 run data get storage uhcp:compass Compass.Pos[0]
data modify storage uhcp:compass Compass.hand[].tag.LodestonePos.Y set value 255
execute store result storage uhcp:compass Compass.hand[].tag.LodestonePos.Z int 1 run data get storage uhcp:compass Compass.Pos[2]
data modify storage uhcp:compass Compass.hand[].tag.LodestoneTracked set value 1b

# Replace items
execute in uhcp:main run function uhcp:compass/both/replace
