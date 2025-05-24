# Every minute, increase the respawn time by 1 second
scoreboard players add %minute_passed ssiege_death_timer 1
execute if score %minute_passed ssiege_death_timer matches 1200.. run scoreboard players add %respawn_time ssiege_death_timer 20
execute if score %minute_passed ssiege_death_timer matches 1200.. run scoreboard players set %minute_passed ssiege_death_timer 0

# Increment all currently dead player's death timers by 1 second
execute as @a[scores={ssiege_death_timer=0..},gamemode=survival] run scoreboard players add @s ssiege_death_timer 20

# If any dead players have waited as long as the current respawn time, handle their respawn
execute as @a[scores={ssiege_death_timer=0..},gamemode=survival] if score @s ssiege_death_timer >= %respawn_time ssiege_death_timer run function ssiege:kill/respawn