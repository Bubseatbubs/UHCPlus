# Apply effects
execute if score %time uhcp_game_time matches 33600.. run return fail
execute if score %time uhcp_game_time matches ..3599 run return run effect give @s minecraft:nausea infinite 0 false

# Reward
effect give @s minecraft:strength infinite 0 false
effect give @s minecraft:resistance infinite 0 false
