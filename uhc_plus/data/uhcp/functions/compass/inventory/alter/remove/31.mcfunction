# Alter count in array position 31
execute store result storage minecraft:uhcp_compass Inventory[31].Count byte 1 run scoreboard players get %uhcp_compassLow uhcp_itemCount
