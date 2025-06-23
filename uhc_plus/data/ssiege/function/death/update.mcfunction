# Every second, decrement all currently dead player's death timers by 1 second
scoreboard players operation %temp uhcp_initStatus = %time uhcp_game_time
scoreboard players operation %temp uhcp_initStatus %= #20 uhcp_const
execute if score %temp uhcp_initStatus matches 0 run scoreboard players remove @s ssiege_death_timer 1

# Update death timer display for dead players
title @s times 0 20 0
title @s subtitle [{"score":{"objective":"ssiege_death_timer","name":"*"}}]
title @s title ""

# Update death timer sidebar display
scoreboard players operation @s uhcp_game_display = @s ssiege_death_timer

# Handle spectator POV
function ssiege:death/spectate/update

# If any dead players have waited as long as the current respawn time, handle their respawn
execute if score @s ssiege_death_timer matches 0 run execute as @s run function ssiege:death/respawn