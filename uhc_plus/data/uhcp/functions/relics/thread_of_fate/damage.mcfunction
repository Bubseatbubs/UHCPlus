execute if entity @s[tag=UHCP_Hit] run return 0

execute at @s run playsound minecraft:entity.sheep.shear player @a[distance=..6.5] ~ ~ ~ 1.0 1.0 1.0
damage @s 4 trident by @a[tag=UHCP_isDashing,sort=nearest,limit=1]
tag @s add UHCP_Hit