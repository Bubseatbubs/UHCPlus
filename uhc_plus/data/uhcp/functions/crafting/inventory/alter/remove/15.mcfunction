# Alter count in array position 15
execute store result storage uhcp:craft Inventory[15].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
