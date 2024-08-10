# In End
execute store result score %compass_bool uhcp_itemInv run function uhcp:compass/minecraft/locate/the_end
execute if score %compass_bool uhcp_itemInv matches 0 run return run function uhcp:compass/both/minecraft/the_end/modify

# Player not found
function uhcp:compass/both/none
