# Alter count in array position 12
execute store result storage minecraft:uhcp_compass Inventory[12].Count byte 1 run scoreboard players get %uhcp_compassLow uhcp_itemCount
