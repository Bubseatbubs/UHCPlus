# Alter count in array position 29
execute store result storage uhcp:craft Inventory[29].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
