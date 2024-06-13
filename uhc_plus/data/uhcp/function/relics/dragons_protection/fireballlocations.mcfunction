tag @s add UHCP_Owner
tag @e[tag=UHCP_New,sort=nearest,limit=1] add UHCP_EndChosen
tag @e[tag=UHCP_Lock,limit=10] add UHCP_DragonBreath
execute at @s run spreadplayers ~ ~ 5 9 false @e[tag=UHCP_DragonBreath]
execute as @e[tag=UHCP_DragonBreath] run data modify entity @s Pos[1] set from entity @a[tag=UHCP_Owner,sort=nearest,limit=1] Pos[1]
