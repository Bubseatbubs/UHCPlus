# Check for failure
execute store success score %top_check uhcp_top_charge at @s run spreadplayers ~ ~ 0 1 false @s
execute if score %top_check uhcp_top_charge matches 1 run return fail

execute at @s unless block ~ 62 ~ minecraft:water run return fail

execute store result score %top_height uhcp_top_charge run data get entity @s Pos[1]
execute if score %top_height uhcp_top_charge matches ..61 at @s run tp @s ~ 64 ~
