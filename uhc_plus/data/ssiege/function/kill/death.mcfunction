advancement revoke @s only ssiege:death

# Death/Respawn Logic
execute as @s positioned ~ ~ ~ run function ssiege:kill/soul_shard/drop_shards

# If player did not kill anyone this life, add 10 minutes to their reverse bounty timer
execute if score @s ssiege_killstreak matches 0 run scoreboard players add @s ssiege_reverse_bounty 12000

# Reset player's killstreak
scoreboard players set @s ssiege_killstreak 0

# On-death Augment effects

# Set up death spectator mode
gamemode spectator @s
tag @s add SSIEGE_dead

# Set death timer
scoreboard players operation @s ssiege_death_timer = %respawn_time ssiege_death_timer

# Situational checks
execute as @s[tag=UHCP_IsAttackTitan] run function uhcp:consumables/titan_spinal_fluid/reset
execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:kill/death/lobby
execute as @s[gamemode=spectator] run return fail