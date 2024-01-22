# Alter count in array position 32
execute store result storage minecraft:uhcp_ender_eye Inventory[32].Count byte 1 run scoreboard players get %uhcp_ender_eyeLow uhcp_itemCount
