# Copy item data
data remove storage uhcp:compass Compass.hand
data modify storage uhcp:compass Compass.hand append from entity @s SelectedItem
data modify storage uhcp:compass Compass.hand[0].Slot set value 0b

# Modify compass
data modify storage uhcp:compass Compass.hand[0].tag.LodestoneDimension set value "minecraft:the_end"
data remove storage uhcp:compass Compass.hand[0].tag.LodestonePos
data modify storage uhcp:compass Compass.hand[0].tag.LodestoneTracked set value 1b

# Replace items
execute in uhcp:main run function uhcp:compass/mainhand/minecraft/overworld/replace
