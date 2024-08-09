# In Overworld
scoreboard players set %compass_bool uhcp_itemInv 1
function uhcp:compass/minecraft/locate/overworld
execute if score %compass_bool uhcp_itemInv matches 1 run return run function uhcp:compass/both/minecraft/overworld/modify

# Player not found
function uhcp:compass/both/none
