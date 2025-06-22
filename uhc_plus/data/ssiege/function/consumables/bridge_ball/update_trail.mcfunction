# Initialize timer for new markers
scoreboard players set @e[type=marker,tag=trail_marker,tag=!timer_set] uhcp_game_time 0
tag @e[type=marker,tag=trail_marker,tag=!timer_set] add timer_set

# Increment timer for all trail markers
scoreboard players add @e[type=marker,tag=trail_marker] uhcp_game_time 1

# Build trail after 20 ticks delay
execute as @e[type=marker,tag=trail_marker,scores={uhcp_game_time=5}] at @s run function ssiege:consumables/bridge_ball/build_trail

# Clean up markers after 25 ticks (gives 5 tick buffer after building)
kill @e[type=marker,tag=trail_marker,scores={uhcp_game_time=25..}]