# Check for failure
execute store success score %uhcp_topCheck uhcp_topCharge at @s run spreadplayers ~ ~ 0 1 false @s
execute if score %uhcp_topCheck uhcp_topCharge matches 0 at @s run tp @s ~ 64 ~
