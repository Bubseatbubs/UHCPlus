# Alter count in array position 4
execute store result storage minecraft:uhcp_compass Inventory[4].Count byte 1 run scoreboard players get %uhcp_compassLow uhcp_itemCount
