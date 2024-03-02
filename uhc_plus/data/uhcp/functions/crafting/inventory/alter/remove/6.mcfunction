# Alter count in array position 6
execute store result storage uhcp:craft Inventory[6].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
