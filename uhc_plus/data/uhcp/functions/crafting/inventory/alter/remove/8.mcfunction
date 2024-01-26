# Alter count in array position 8
execute store result storage minecraft:uhcp_craft Inventory[8].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
