# Calculate Titan health based on player count
execute store result score %hp uhcp_team run execute if entity @a
scoreboard players set %MULT uhcp_titans_id 30
scoreboard players set %BASE uhcp_titans_id 125
scoreboard players operation %hp uhcp_team *= %MULT uhcp_titans_id
scoreboard players operation %hp uhcp_team += %BASE uhcp_titans_id
execute store result storage ssiege:titan_health input.hp double 1 run scoreboard players get %hp uhcp_team

# Spawn Titan
execute in minecraft:overworld positioned 0 100 0 summon minecraft:wolf run function ssiege:titans/fenrir/init_helper with storage ssiege:titan_health input
execute in minecraft:overworld positioned 0 100 0 as @n[tag=UHCP_New] run function ssiege:titans/fenrir/set_fenrir_health with storage ssiege:titan_health input
execute positioned 0 63 0 run spreadplayers 0 0 0 1 true @n[tag=UHCP_Titan]

# Announce
tellraw @a ["",{"text":"Fenrir","bold":true,"color":"red"},{"text":" has spawned! Defeat him to earn an "},{"text":"army of Wolves","bold":true,"color":"yellow"},{"text":" for your team."}]