tag @s add UHCP_Owner
tag @n[tag=UHCP_New] add UHCP_EndChosen
tag @e[tag=UHCP_Lock,limit=10] add UHCP_DragonBreath
execute at @s run spreadplayers ~ ~ 5 9 false @e[tag=UHCP_DragonBreath]
execute as @e[tag=UHCP_DragonBreath] run data modify entity @s Pos[1] set from entity @p[tag=UHCP_Owner] Pos[1]
