# Alter count in array position 10
execute store result storage uhcp:craft Inventory[10].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
