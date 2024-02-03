# Alter count in array position 12
execute store result storage uhcp:craft Inventory[12].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
