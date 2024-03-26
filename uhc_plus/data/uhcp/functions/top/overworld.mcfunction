# Check for failure
execute store success score %top_check uhcp_top_charge at @s run spreadplayers ~ ~ 0 1 false @s
execute if score %top_check uhcp_top_charge matches 0 at @s run tp @s ~ 64 ~
