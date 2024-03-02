# Alter count in array position 4
execute store result storage uhcp:craft Inventory[4].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
