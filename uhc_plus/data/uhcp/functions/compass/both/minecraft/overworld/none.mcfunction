# Modify compasses
data modify storage uhcp:compass Compass.hand[].tag.LodestoneDimension set value "minecraft:overworld"
data remove storage uhcp:compass Compass.hand[].tag.LodestonePos
data modify storage uhcp:compass Compass.hand[].tag.LodestoneTracked set value 1b

# Replace items
execute in uhcp:main run function uhcp:compass/both/replace
