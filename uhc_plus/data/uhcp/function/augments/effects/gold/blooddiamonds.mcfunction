# Give diamonds
give @s minecraft:diamond 24

# Temporarily lower max health
attribute @s minecraft:max_health modifier add uhcp:max_health -8.0 add_value
scoreboard players operation @s uhcp_game_time = %time uhcp_game_time
scoreboard players add @s uhcp_game_time 2
