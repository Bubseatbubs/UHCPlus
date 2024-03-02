# Alter count in array position 9
execute store result storage uhcp:craft Inventory[9].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
