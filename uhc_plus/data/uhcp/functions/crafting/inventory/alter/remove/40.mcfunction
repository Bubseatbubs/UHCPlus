# Alter count in array position 40
execute store result storage uhcp:craft Inventory[40].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
