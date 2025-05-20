# Determine world height limit
execute store result score %compass_bool uhcp_itemInv run function uhcp:compass/dimension/lodestone/-64
execute if score %compass_bool uhcp_itemInv matches 1 run return fail

execute store result score %compass_bool uhcp_itemInv run function uhcp:compass/dimension/lodestone/0
execute if score %compass_bool uhcp_itemInv matches 1 run return fail

# Find world height
scoreboard players set %compass_height uhcp_itemInv -6095
scoreboard players set %compass_min uhcp_itemInv -2032
scoreboard players set %compass_range uhcp_itemInv 4063
scoreboard players set %compass_jump uhcp_itemInv 4063
scoreboard players set %compass_div uhcp_itemInv 1
scoreboard players set %compass_stage uhcp_itemInv 2
scoreboard players set %const uhcp_initStatus 2
function uhcp:compass/dimension/lodestone/minimum
