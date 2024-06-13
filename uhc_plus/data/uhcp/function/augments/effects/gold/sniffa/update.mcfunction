tag @s add UHCP_CurrentSniffa
execute as @e[tag=UHCP_SnifferControl] at @s if score @s uhcp_id = @e[tag=UHCP_CurrentSniffa,sort=nearest,limit=1] uhcp_id run tp @e[tag=UHCP_CurrentSniffa,sort=nearest,limit=1] @s
tag @s remove UHCP_CurrentSniffa