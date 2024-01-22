# Alter count in array position 6
execute store result storage minecraft:uhcp_ender_eye Inventory[6].Count byte 1 run scoreboard players get %uhcp_ender_eyeLow uhcp_itemCount
