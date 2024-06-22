tag @s add UHCP_CurrentSniffa
execute as @e[tag=UHCP_SnifferControl] at @s if score @s uhcp_game_id = @n[tag=UHCP_CurrentSniffa] uhcp_game_id run tp @n[tag=UHCP_CurrentSniffa] @s
tag @s remove UHCP_CurrentSniffa
