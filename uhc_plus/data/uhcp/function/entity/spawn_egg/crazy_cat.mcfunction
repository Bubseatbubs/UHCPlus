# Set owner
data modify entity @s Owner set from entity @p[scores={uhcp_spawn_crazyCat=1..}] UUID
scoreboard players remove @p[scores={uhcp_spawn_crazyCat=1..}] uhcp_spawn_crazyCat 1
