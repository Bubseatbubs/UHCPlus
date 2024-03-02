# Alter count in array position 30
execute store result storage uhcp:craft Inventory[30].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
