# Alter count in array position 15
execute store result storage uhcp:craft Inventory[15].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
