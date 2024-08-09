# In Nether
scoreboard players set %compass_bool uhcp_itemInv 1
function uhcp:compass/minecraft/locate/the_nether
execute if score %compass_bool uhcp_itemInv matches 1 run return run function uhcp:compass/offhand/minecraft/the_nether/modify

# Player not found
function uhcp:compass/offhand/none
