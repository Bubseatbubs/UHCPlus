# Alter count in array position 2
execute store result storage uhcp:craft Inventory[2].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
