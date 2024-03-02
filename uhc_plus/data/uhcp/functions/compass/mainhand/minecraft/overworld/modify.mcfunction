# Modify compass
data modify storage uhcp:compass Compass.hand[0].components."minecraft:lodestone_target".dimension set value "minecraft:overworld"
data modify storage uhcp:compass Compass.hand[0].components."minecraft:lodestone_target".pos set from storage uhcp:compass Compass.Pos
data modify storage uhcp:compass Compass.hand[0].components."minecraft:lodestone_target".pos[1] set value -64.0d

# Replace items
execute in uhcp:main run function uhcp:compass/mainhand/replace
