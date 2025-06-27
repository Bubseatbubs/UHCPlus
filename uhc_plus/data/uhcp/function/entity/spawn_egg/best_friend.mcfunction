# Set owner
data modify entity @s Owner set from entity @p[scores={uhcp_spawn_bestFriend=1..}] UUID
scoreboard players remove @p[scores={uhcp_spawn_bestFriend=1..}] uhcp_spawn_bestFriend 1
