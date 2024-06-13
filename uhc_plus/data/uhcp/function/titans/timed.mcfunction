# Timed Titan events
execute if score %titans uhcp_game_time matches 6000 in minecraft:overworld positioned 0 64 0 run return run function uhcp:titans/spawn/init
execute if score %titans uhcp_game_time matches 24000 in minecraft:overworld run return run function uhcp:titans/spawn/summon
execute if score %titans uhcp_game_time matches 42000 in minecraft:overworld run function uhcp:reset/titans
