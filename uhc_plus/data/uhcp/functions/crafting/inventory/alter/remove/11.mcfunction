# Alter count in array position 11
execute store result storage uhcp:craft Inventory[11].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
