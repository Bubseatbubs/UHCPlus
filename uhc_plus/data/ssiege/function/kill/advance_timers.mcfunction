# Every minute, increase the respawn time by 1 second
scoreboard players add %minute_passed ssiege_death_timer 1
execute if score %minute_passed ssiege_death_timer matches 1200.. run scoreboard players add %respawn_time ssiege_death_timer 1
execute if score %minute_passed ssiege_death_timer matches 1200.. run scoreboard players set %minute_passed ssiege_death_timer 0

# Every second, decrement all currently dead player's death timers by 1 second
scoreboard players add %second_passed ssiege_death_timer 1
execute if score %second_passed ssiege_death_timer matches 20.. run execute as @a[tag=SSIEGE_dead] run scoreboard players remove @s ssiege_death_timer 1
execute if score %second_passed ssiege_death_timer matches 20.. run scoreboard players set %second_passed ssiege_death_timer 0

# Update death timer display for dead players
execute as @a[gamemode=spectator, tag=SSIEGE_dead] if score @s ssiege_death_timer matches 0.. run title @a times 0 20 0
execute as @a[gamemode=spectator, tag=SSIEGE_dead] if score @s ssiege_death_timer matches 0.. run title @s subtitle {text:"seconds until respawn"}
execute as @a[gamemode=spectator, tag=SSIEGE_dead] if score @s ssiege_death_timer matches 0.. run title @s title [{"score":{"objective":"ssiege_death_timer","name":"*"}}]

# Update death timer sidebar display
execute as @a[gamemode=spectator, tag=SSIEGE_dead] if score @s ssiege_death_timer matches 0.. run scoreboard players operation @s uhcp_game_display = @s ssiege_death_timer

# If any dead players have waited as long as the current respawn time, handle their respawn
execute as @a[scores={ssiege_death_timer=0..},gamemode=spectator] if score @s ssiege_death_timer matches 0 run execute as @s run function ssiege:kill/death/respawn