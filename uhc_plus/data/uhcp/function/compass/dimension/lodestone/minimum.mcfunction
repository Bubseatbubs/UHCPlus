# Seek minimum y-level
execute store result score %compass_bool uhcp_itemInv run function uhcp:compass/dimension/lodestone/minimum/seek
execute if score %compass_bool uhcp_itemInv matches 1 run return fail

# Continue search
scoreboard players operation %compass_div uhcp_itemInv *= %const uhcp_initStatus
scoreboard players operation %compass_stage uhcp_itemInv = %compass_div uhcp_itemInv
scoreboard players operation %compass_jump uhcp_itemInv = %compass_range uhcp_itemInv
scoreboard players operation %compass_jump uhcp_itemInv /= %compass_div uhcp_itemInv
scoreboard players operation %compass_start uhcp_itemInv = %compass_jump uhcp_itemInv
scoreboard players operation %compass_start uhcp_itemInv /= %const uhcp_initStatus
scoreboard players operation %compass_height uhcp_itemInv = %compass_min uhcp_itemInv
scoreboard players operation %compass_height uhcp_itemInv -= %compass_start uhcp_itemInv
function uhcp:compass/dimension/lodestone/minimum
