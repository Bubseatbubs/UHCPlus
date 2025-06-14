# Age all cobweb cleanup markers
scoreboard players add @s uhcp_game_time 1
# Clear cobwebs that are 100 ticks (5 seconds) old
execute as @s[scores={uhcp_game_time=100}] at @s run setblock ~ ~ ~ minecraft:air replace
# Remove markers that have done their job
execute as @s[scores={uhcp_game_time=100}] run kill @s 