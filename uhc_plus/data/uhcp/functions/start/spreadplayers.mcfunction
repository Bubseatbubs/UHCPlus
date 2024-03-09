# Spread team members out slightly
execute as @r[scores={uhcp_initStatus=1}] at @s run spreadplayers ~ ~ 4 8 false @a[scores={uhcp_initStatus=1}]
scoreboard players remove @a uhcp_initStatus 1
execute if entity @a[scores={uhcp_initStatus=1..}] run function uhcp:start/spreadplayers
