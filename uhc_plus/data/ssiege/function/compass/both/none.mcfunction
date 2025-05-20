# Modify compasses
data remove storage uhcp:compass Compass.hand[].components."minecraft:lodestone_tracker".target

# Replace items
execute in uhcp:main run function uhcp:compass/both/replace

# Finish
function uhcp:compass/tracked
