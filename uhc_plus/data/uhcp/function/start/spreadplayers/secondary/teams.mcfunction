# Spread members of same teams
execute as @r[scores={uhcp_initStatus=1}] at @s run function uhcp:start/spreadplayers/secondary/spreadplayers
scoreboard players remove @a uhcp_initStatus 1
execute if entity @a[scores={uhcp_initStatus=1..}] run function uhcp:start/spreadplayers/secondary/teams
