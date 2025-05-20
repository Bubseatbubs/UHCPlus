# Modify compasses
data modify storage uhcp:compass Compass.hand[].components."minecraft:lodestone_tracker".target.dimension set from storage uhcp:compass Current.Dimension
data modify storage uhcp:compass Compass.hand[].components."minecraft:lodestone_tracker".target.pos set value [I;0,0,0]
execute store result storage uhcp:compass Compass.hand[].components."minecraft:lodestone_tracker".target.pos[0] int 1 run data get storage uhcp:compass Compass.Pos[0]
execute store result storage uhcp:compass Compass.hand[].components."minecraft:lodestone_tracker".target.pos[2] int 1 run data get storage uhcp:compass Compass.Pos[2]
function uhcp:compass/dimension/modify/heights with storage uhcp:compass Current

# Replace items
execute in uhcp:main run function uhcp:compass/both/replace

# Finish
function uhcp:compass/tracked
