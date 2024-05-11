# AFK
execute if score @s uhcp_augment matches 101 run return run execute if score %time uhcp_game_time matches ..3599 run function uhcp:milk_bucket/augments/silver/afk

# Drunken Stupor
execute if score @s uhcp_augment matches 108 run return run function uhcp:milk_bucket/augments/silver/drunkenstupor

# Iron Will
execute if score @s uhcp_augment matches 115 run return run execute if score %pvp uhcp_settings matches 1.. run effect give @s minecraft:resistance infinite 4 false

# Strong Swimmer
execute if score @s uhcp_augment matches 116 run return run effect give @s minecraft:dolphins_grace infinite 0 false

# Speedy Start
execute if score @s uhcp_augment matches 126 run return run execute if score %time uhcp_game_time matches ..23999 run effect give @s minecraft:speed infinite 0 false

# Parasite
execute if score @s uhcp_augment matches 147 run function uhcp:milk_bucket/augments/silver/parasite
