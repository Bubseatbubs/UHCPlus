# Alter count in array position 21
execute store result storage uhcp:craft Inventory[21].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
