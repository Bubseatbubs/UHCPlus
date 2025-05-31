# Death/Respawn Logic
gamemode spectator @s
execute unless score @s ssiege_death_timer matches 0.. run execute as @s run function ssiege:kill/soul_shard/calculate_shards_dropped
tag @s add SSIEGE_dead
execute unless score @s ssiege_death_timer matches 0.. run scoreboard players operation @s ssiege_death_timer = %respawn_time ssiege_death_timer

# Situational checks
execute as @s[tag=UHCP_IsAttackTitan] run function uhcp:consumables/titan_spinal_fluid/reset

# In lobby
execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:kill/death/lobby
execute as @s[gamemode=spectator] run return fail