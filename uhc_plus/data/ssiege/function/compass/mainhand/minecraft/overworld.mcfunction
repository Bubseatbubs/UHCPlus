# In Overworld
execute store result score %compass_bool uhcp_itemInv run function uhcp:compass/minecraft/locate/overworld
execute if score %compass_bool uhcp_itemInv matches 0 run return run function uhcp:compass/mainhand/minecraft/overworld/modify

# Player not found
function uhcp:compass/mainhand/none
