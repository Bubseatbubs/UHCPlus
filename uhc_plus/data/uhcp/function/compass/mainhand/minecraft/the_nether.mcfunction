# In Nether
execute store result score %compass_bool uhcp_itemInv run function uhcp:compass/minecraft/locate/the_nether
execute if score %compass_bool uhcp_itemInv matches 0 run return run function uhcp:compass/mainhand/minecraft/the_nether/modify

# Player not found
function uhcp:compass/mainhand/none
