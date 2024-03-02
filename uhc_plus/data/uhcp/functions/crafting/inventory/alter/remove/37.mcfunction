# Alter count in array position 37
execute store result storage uhcp:craft Inventory[37].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
