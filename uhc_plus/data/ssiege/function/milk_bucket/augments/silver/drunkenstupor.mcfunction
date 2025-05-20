# Apply effects
execute if score %time uhcp_game_time matches ..3599 run return run effect give @s minecraft:nausea infinite 0 false
execute if score %time uhcp_game_time matches 3600..33599 run function uhcp:milk_bucket/augments/silver/drunkenstupor/reward
