# Alter count in array position 13
execute store result storage minecraft:uhcp_compass Inventory[13].Count byte 1 run scoreboard players get %uhcp_compassLow uhcp_itemCount
