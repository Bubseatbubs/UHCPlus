# Alter count in array position 35
execute store result storage uhcp:craft Inventory[35].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
