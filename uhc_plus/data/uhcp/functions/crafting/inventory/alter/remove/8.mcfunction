# Alter count in array position 8
execute store result storage uhcp:craft Inventory[8].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
