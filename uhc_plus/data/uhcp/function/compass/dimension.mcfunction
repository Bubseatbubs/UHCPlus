# Determine lodestone placement height
function uhcp:compass/dimension/lodestone

# Locate nearest player
execute store result score %compass_bool uhcp_itemInv run function uhcp:compass/dimension/locate
