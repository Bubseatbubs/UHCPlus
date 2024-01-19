# Alter count in array position 1
execute store result storage minecraft:uhcp_compass Inventory[1].Count byte 1 run scoreboard players get %uhcp_compassLow uhcp_itemCount
