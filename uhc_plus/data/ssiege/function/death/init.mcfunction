advancement revoke @s only ssiege:death
# Situational checks
execute as @s[tag=UHCP_IsAttackTitan] run function uhcp:consumables/titan_spinal_fluid/reset
execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:kill/death/lobby

spawnpoint @s ~ ~3 ~
scoreboard players add @s ssiege_deaths 1

# Give Soulshards to killer, if there is one
scoreboard players operation %temp ssiege_multi = @s ssiege_shards
scoreboard players set %killer_exists ssiege_multi 0
execute on attacker as @s[type=player,advancements={ssiege:killed_player=true}] run function ssiege:kill/reward
execute if score %killer_exists ssiege_multi matches 0 run function ssiege:death/pve_death

# If player was killed by a player and did not kill anyone this life, add 10 minutes to their reverse bounty timer
# reverse bounty also added in pve deaths after 15
execute if score %killer_exists ssiege_multi matches 1 if score @s ssiege_killstreak matches 0 run scoreboard players add @s ssiege_reverse_bounty 12000

# Reset player's killstreak
scoreboard players set @s ssiege_killstreak 0

# On-death Augment effects
function ssiege:death/augments

# Set up death spectator mode
gamemode spectator @s
execute as @s run tag @s add SSIEGE_dead

# Set death timer
# Death timers are 5 seconds + 1 second for every minute of game time
scoreboard players operation %respawn_time ssiege_death_timer = %time uhcp_game_time
scoreboard players operation %respawn_time ssiege_death_timer /= #1200 uhcp_const
scoreboard players add %respawn_time ssiege_death_timer 5
scoreboard players operation @s ssiege_death_timer = %respawn_time ssiege_death_timer
scoreboard players display name @s uhcp_game_display [{"selector":"@s"},{text:" respawn:"}]
scoreboard players operation @s uhcp_game_display = @s ssiege_death_timer

function ssiege:death/spectate/menu