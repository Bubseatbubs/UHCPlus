execute store success score %prev_killed uhcp_titans_id run kill @e[tag=UHCP_Gallie]
execute if score %prev_killed uhcp_titans_id matches 1.. run tellraw @a ["",{"text":"Gallie & Bellan","bold":true,"color":"red"},{"text":" disappeared..."}]

# Calculate Titan health based on player count
execute store result score %hp uhcp_team run execute if entity @a
scoreboard players set %MULT uhcp_titans_id 25
scoreboard players set %BASE uhcp_titans_id 100
scoreboard players operation %hp uhcp_team *= %MULT uhcp_titans_id
scoreboard players operation %hp uhcp_team += %BASE uhcp_titans_id
execute store result storage ssiege:titan_health input.hp double 1 run scoreboard players get %hp uhcp_team

# Spawn Titan
execute in minecraft:overworld positioned 0 100 0 summon minecraft:blaze run function ssiege:titans/infernus/init_helper with storage ssiege:titan_health input
execute positioned 0 63 0 run spreadplayers 0 0 0 1 true @n[tag=UHCP_Titan]

# Announce
title @a times 20 40 20
title @a subtitle {"text":"has spawned!","color":"red"}
title @a title {"text":"Infernus","color":"red"}
tellraw @a ["",{"text":"Infernus","bold":true,"color":"red"},{"text":" has spawned! Defeat him to give your team permanent "},{"text":"fire damage on-hit","bold":true,"color":"yellow"},{"text":"."}]