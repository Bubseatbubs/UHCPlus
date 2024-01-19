# Alter count in array position 35
execute store result storage minecraft:uhcp_compass Inventory[35].Count byte 1 run scoreboard players get %uhcp_compassLow uhcp_itemCount
