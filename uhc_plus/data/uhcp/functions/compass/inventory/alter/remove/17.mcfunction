# Alter count in array position 17
execute store result storage minecraft:uhcp_compass Inventory[17].Count byte 1 run scoreboard players get %uhcp_compassLow uhcp_itemCount
