# Shrink range and continue
execute if score %compass_jump uhcp_itemInv matches 1 run return run function uhcp:compass/dimension/lodestone/minimum/found with storage uhcp:compass Current

scoreboard players operation %compass_min uhcp_itemInv = %compass_height uhcp_itemInv
scoreboard players operation %compass_min uhcp_itemInv -= %compass_jump uhcp_itemInv
execute if score %compass_min uhcp_itemInv matches ..-2033 run scoreboard players set %compass_min uhcp_itemInv -2032
scoreboard players operation %compass_height uhcp_itemInv -= %compass_min uhcp_itemInv
scoreboard players operation %compass_range uhcp_itemInv = %compass_height uhcp_itemInv

scoreboard players set %compass_div uhcp_itemInv 1
scoreboard players set %compass_stage uhcp_itemInv 2
scoreboard players operation %compass_jump uhcp_itemInv = %compass_range uhcp_itemInv
scoreboard players operation %compass_jump uhcp_itemInv /= %const uhcp_initStatus
scoreboard players operation %compass_start uhcp_itemInv = %compass_jump uhcp_itemInv
scoreboard players operation %compass_start uhcp_itemInv /= %const uhcp_initStatus
scoreboard players operation %compass_height uhcp_itemInv = %compass_min uhcp_itemInv
scoreboard players operation %compass_height uhcp_itemInv -= %compass_start uhcp_itemInv
return 0
