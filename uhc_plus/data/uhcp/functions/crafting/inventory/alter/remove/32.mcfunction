# Alter count in array position 32
execute store result storage uhcp:craft Inventory[32].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
