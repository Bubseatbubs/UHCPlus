# Alter count in array position 26
execute store result storage uhcp:craft Inventory[26].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
