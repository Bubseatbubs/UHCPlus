# Alter count in array position 25
execute store result storage uhcp:craft Inventory[25].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
