# Spread team members out slightly
execute at @a[scores={uhcp_team=1},sort=random,limit=1] run spreadplayers ~ ~ 3 25 false @a[scores={uhcp_team=1}]
scoreboard players remove @a uhcp_team 1
execute if entity @a[scores={uhcp_team=1..}] run function uhcp:start/spreadplayers/teams/cycle
