# Age all cobweb cleanup markers
scoreboard players add @s uhcp_game_time 1
# Clear cobwebs that are 200 ticks (100 seconds) old
execute as @s[scores={uhcp_game_time=200}] at @s run fill ~-2 ~ ~ ~2 ~ ~ minecraft:air replace cobweb
execute as @s[scores={uhcp_game_time=200}] at @s run fill ~ ~ ~-2 ~ ~ ~2 minecraft:air replace cobweb
# Remove markers that have done their job
execute as @s[scores={uhcp_game_time=200}] run kill @s 