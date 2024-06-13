# Modify compass
data modify storage uhcp:compass Compass.hand[0].components."minecraft:lodestone_tracker".target.dimension set value "minecraft:the_end"
data modify storage uhcp:compass Compass.hand[0].components."minecraft:lodestone_tracker".target.pos set value [I;0,0,0]
execute store result storage uhcp:compass Compass.hand[0].components."minecraft:lodestone_tracker".target.pos[0] int 1 run data get storage uhcp:compass Compass.Pos[0]
execute store result storage uhcp:compass Compass.hand[0].components."minecraft:lodestone_tracker".target.pos[2] int 1 run data get storage uhcp:compass Compass.Pos[2]
data modify storage uhcp:compass Compass.hand[0].components."minecraft:lodestone_tracker".target.pos[1] set value 255

# Replace items
execute in uhcp:main run function uhcp:compass/offhand/replace
