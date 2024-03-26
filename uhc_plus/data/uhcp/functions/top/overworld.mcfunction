# Check for failure
execute store success score %top_check uhcp_topCharge at @s run spreadplayers ~ ~ 0 1 false @s
execute if score %top_check uhcp_topCharge matches 0 at @s run tp @s ~ 64 ~
