# 15 minutes: Titan 1 (Giga Creeper)
execute if score %titans uhcp_game_time matches 18000 in minecraft:overworld run function ssiege:titans/giga_creeper/init

# 22 minutes: Titan 2 (Arachne)
execute if score %titans uhcp_game_time matches 26400 in minecraft:overworld run function ssiege:titans/arachne/init

# 29 minutes: Titan 3 (Ferrum)
execute if score %titans uhcp_game_time matches 34800 in minecraft:overworld run function ssiege:titans/ferrum/init

# 36 minutes: Titan 4 (Bone Colossus)
execute if score %titans uhcp_game_time matches 43200 in minecraft:overworld run function ssiege:titans/bone_colossus/init

# 43 minutes: Titan 5 (Gallie & Bellan)
execute if score %titans uhcp_game_time matches 51600 in minecraft:overworld run function ssiege:titans/gallie/init

# 50 minutes: Titan 6 (Infernus)
execute if score %titans uhcp_game_time matches 60000 in minecraft:overworld run function ssiege:titans/infernus/init

# 7 minutes between each titan
scoreboard players add %titans uhcp_game_time 8400