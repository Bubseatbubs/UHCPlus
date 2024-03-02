# Alter count in array position 36
execute store result storage uhcp:craft Inventory[36].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
