# Alter count in array position 26
execute store result storage minecraft:uhcp_compass Inventory[26].Count byte 1 run scoreboard players get %uhcp_compassLow uhcp_itemCount
