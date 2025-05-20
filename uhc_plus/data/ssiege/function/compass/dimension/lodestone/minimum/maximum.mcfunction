# Start search for maximum world height
scoreboard players operation %compass_min uhcp_itemInv = %compass_height uhcp_itemInv
scoreboard players add %compass_min uhcp_itemInv 15
scoreboard players operation %compass_max uhcp_itemInv = %compass_height uhcp_itemInv
scoreboard players add %compass_max uhcp_itemInv 4063
execute if score %compass_max uhcp_itemInv matches 6095.. run scoreboard players set %compass_max uhcp_itemInv 6094
scoreboard players set %compass_range uhcp_itemInv 4063
scoreboard players operation %compass_range uhcp_itemInv -= %compass_min uhcp_itemInv

scoreboard players operation %compass_height uhcp_itemInv = %compass_max uhcp_itemInv
scoreboard players operation %compass_height uhcp_itemInv += %compass_range uhcp_itemInv
scoreboard players operation %compass_jump uhcp_itemInv = %compass_range uhcp_itemInv
scoreboard players set %compass_div uhcp_itemInv 1
scoreboard players set %compass_stage uhcp_itemInv 2
return run function uhcp:compass/dimension/lodestone/maximum
