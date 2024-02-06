# Modify compass
data modify storage uhcp:compass Compass.hand[0].tag.LodestoneDimension set value "minecraft:overworld"
data remove storage uhcp:compass Compass.hand[0].tag.LodestonePos
data modify storage uhcp:compass Compass.hand[0].tag.LodestoneTracked set value 1b

# Replace items
execute in uhcp:main run function uhcp:compass/offhand/replace
