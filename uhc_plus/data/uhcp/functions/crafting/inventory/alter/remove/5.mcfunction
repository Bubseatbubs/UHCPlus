# Alter count in array position 5
execute store result storage uhcp:craft Inventory[5].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
