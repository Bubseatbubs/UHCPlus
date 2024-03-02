# Modify compasses
data modify storage uhcp:compass Compass.hand[].components."minecraft:lodestone_target".dimension set value "uhcp:main"
data modify storage uhcp:compass Compass.hand[].components."minecraft:lodestone_target".pos set value [I;0,0,0]

# Replace items
execute in uhcp:main run function uhcp:compass/both/replace
