# Spread team members out slightly
execute if entity @a[scores={uhcp_team=1}] as @r[scores={uhcp_team=1}] at @s run spreadplayers ~ ~ 4 5 false @a[scores={uhcp_team=1}]
scoreboard players remove @a uhcp_team 1
execute if entity @a[scores={uhcp_team=1..}] run function uhcp:start/spreadplayers/teams/cycle
