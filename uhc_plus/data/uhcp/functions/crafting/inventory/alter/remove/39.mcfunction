# Alter count in array position 39
execute store result storage uhcp:craft Inventory[39].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
