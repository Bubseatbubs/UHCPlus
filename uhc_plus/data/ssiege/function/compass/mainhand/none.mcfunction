# Modify compass
data remove storage uhcp:compass Compass.hand[0].components."minecraft:lodestone_tracker".target

# Replace items
execute in uhcp:main run function uhcp:compass/mainhand/replace

# Finish
function uhcp:compass/tracked
