# Alter count in array position 7
execute store result storage minecraft:uhcp_craft Inventory[7].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
