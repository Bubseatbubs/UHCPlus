# Alter count in array position 3
execute store result storage uhcp:craft Inventory[3].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
