# Alter count in array position 14
execute store result storage minecraft:uhcp_compass Inventory[14].Count byte 1 run scoreboard players get %uhcp_compassLow uhcp_itemCount
