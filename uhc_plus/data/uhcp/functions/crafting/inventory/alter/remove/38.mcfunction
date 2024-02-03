# Alter count in array position 38
execute store result storage uhcp:craft Inventory[38].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
