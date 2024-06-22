scoreboard players reset %aggro uhcp_titans_count
execute store result score %aggro uhcp_titans_count on target if entity @s[type=minecraft:player]
execute if score %aggro uhcp_titans_count matches 0 run return 0
execute if score %aggro uhcp_titans_count matches 1 run return 1
