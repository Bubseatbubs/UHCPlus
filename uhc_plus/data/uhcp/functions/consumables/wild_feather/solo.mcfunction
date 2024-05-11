# In the case of no team members
execute if predicate uhcp:dimensions/minecraft/the_nether run return run spreadplayers ~ ~ 0 16 under 127 false @s
execute if predicate uhcp:dimensions/minecraft/the_end run return run spreadplayers ~ ~ 0 16 true @s
execute if predicate uhcp:dimensions/minecraft/overworld store success score @s uhcp_initStatus run spreadplayers ~ ~ 0 16 true @s

execute if score @s uhcp_initStatus matches 1 run return fail
execute unless block ~ 62 ~ minecraft:water run return fail

execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
execute if score @s uhcp_initStatus matches ..61 run tp @s ~ 64 ~
