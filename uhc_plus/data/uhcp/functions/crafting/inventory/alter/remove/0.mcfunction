# Alter count in array position 0
execute store result storage uhcp:craft Inventory[0].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
