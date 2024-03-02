# Alter count in array position 18
execute store result storage uhcp:craft Inventory[18].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
