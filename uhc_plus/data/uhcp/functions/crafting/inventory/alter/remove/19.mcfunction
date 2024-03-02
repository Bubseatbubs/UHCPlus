# Alter count in array position 19
execute store result storage uhcp:craft Inventory[19].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
