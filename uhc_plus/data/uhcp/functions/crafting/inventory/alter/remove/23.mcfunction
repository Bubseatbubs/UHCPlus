# Alter count in array position 23
execute store result storage uhcp:craft Inventory[23].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
