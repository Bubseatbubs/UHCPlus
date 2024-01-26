# Alter count in array position 37
execute store result storage minecraft:uhcp_craft Inventory[37].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
