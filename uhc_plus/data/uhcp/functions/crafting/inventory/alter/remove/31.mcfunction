# Alter count in array position 31
execute store result storage uhcp:craft Inventory[31].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
