# Alter count in array position 30
execute store result storage uhcp:craft Inventory[30].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
