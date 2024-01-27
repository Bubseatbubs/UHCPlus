##
# Stops chosenitem advancement from activating twice if player throws an item
##
scoreboard players set @s uhcp_a_validSelection 0

# Revert Black Stained Glass Pane
clear @s minecraft:black_stained_glass_pane
function uhcp:augments/generatepanes

advancement revoke @s only uhcp:augments/chosenitem
advancement revoke @s only uhcp:augments/threwitem
