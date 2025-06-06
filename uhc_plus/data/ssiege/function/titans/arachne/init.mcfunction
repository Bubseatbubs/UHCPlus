# Calculate Titan health based on player count
execute store result score %hp uhcp_team run execute if entity @a
scoreboard players set %MULT uhcp_titans_id 21
scoreboard players set %BASE uhcp_titans_id 85
scoreboard players operation %hp uhcp_team *= %MULT uhcp_titans_id
scoreboard players operation %hp uhcp_team += %BASE uhcp_titans_id
execute store result storage ssiege:titan_health input.hp double 1 run scoreboard players get %hp uhcp_team

# Spawn Titan
execute in minecraft:overworld positioned 0 200 0 summon minecraft:spider run function ssiege:titans/arachne/init_helper with storage ssiege:titan_health input
execute positioned over motion_blocking_no_leaves as @e[tag=UHCP_Titan] run tp @s ~ ~ ~
effect give @e[tag=UHCP_Titan] glowing infinite 0 true

# Announce
title @a clear
title @a times 20 40 20
title @a subtitle {"text":"has spawned!","color":"gold"}
title @a title {"text":"Arachne","color":"gold"}
tellraw @a ["",{"text":"Arachne","bold":true,"color":"gold"},{"text":" has spawned! Defeat her to earn "},{"text":"Webslingers","bold":true,"color":"yellow"},{"text":" for your team."}]