# Check stored heights
execute store success score %compass_bool uhcp_itemInv run data modify storage uhcp:compass Current.Dimension set from entity @s Dimension
execute if score %compass_bool uhcp_itemInv matches 0 run return fail
data remove storage uhcp:compass Current.height
execute store success score %compass_bool uhcp_itemInv run function uhcp:compass/dimension/lodestone/check with storage uhcp:compass Current

# Determine lodestone height
execute if score %compass_bool uhcp_itemInv matches 0 at @s run function uhcp:compass/dimension/lodestone/height
