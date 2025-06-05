advancement revoke @s only ssiege:death

# Death/Respawn Logic
spawnpoint @s ~ ~3 ~
execute as @s positioned ~ ~ ~ run function ssiege:kill/soul_shard/drop_shards

# If player did not kill anyone this life, add 10 minutes to their reverse bounty timer
execute if score @s ssiege_killstreak matches 0 run scoreboard players add @s ssiege_reverse_bounty 12000

# Reset player's killstreak
scoreboard players set @s ssiege_killstreak 0

# On-death Augment effects
function ssiege:kill/death/augments

# Set up death spectator mode
gamemode spectator @s
execute as @s[tag=!UHCP_Explode] run tag @s add SSIEGE_dead

# Delay tagging explode to ensure player gets to watch their death explosion
execute as @s[tag=UHCP_Explode] run schedule function ssiege:kill/explode_spectate_delay 100t

# Set death timer
scoreboard players operation @s ssiege_death_timer = %respawn_time ssiege_death_timer
scoreboard players display name @s uhcp_game_display [{"selector":"@s"},{text:" Respawn:"}]
scoreboard players operation @s uhcp_game_display = @s ssiege_death_timer

# Situational checks
execute as @s[tag=UHCP_IsAttackTitan] run function uhcp:consumables/titan_spinal_fluid/reset
execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:kill/death/lobby
execute as @s[gamemode=spectator] run return fail