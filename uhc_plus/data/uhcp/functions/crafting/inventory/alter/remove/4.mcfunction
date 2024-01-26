# Alter count in array position 4
execute store result storage minecraft:uhcp_craft Inventory[4].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
