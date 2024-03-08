tag @s add UHCP_CurrentSniffa
damage @e[type=#uhcp:can_be_hostile_mobs,distance=..1,limit=1,sort=nearest] 1
execute as @e[tag=UHCP_SnifferControl] at @s if score @s uhcp_id = @e[tag=UHCP_CurrentSniffa,sort=nearest,limit=1] uhcp_id run tp @e[tag=UHCP_CurrentSniffa,sort=nearest,limit=1] @s
tag @s remove UHCP_CurrentSniffa