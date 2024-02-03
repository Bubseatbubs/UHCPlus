# Alter count in array position 22
execute store result storage uhcp:craft Inventory[22].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
