# Remove one compass from inventory
data modify storage minecraft:uhcp_craft Inventory set from entity @s Inventory
execute if predicate uhcp:compass/compass run function uhcp:crafting/inventory/player_compass/find
execute unless predicate uhcp:compass/compass run scoreboard players set %uhcp_itemLow uhcp_itemCount 1
clear @s minecraft:compass
function uhcp:crafting/inventory/load
