# Calculate Titan health based on player count
execute store result score %hp uhcp_team run execute if entity @a
scoreboard players set %MULT uhcp_titans_id 42
scoreboard players set %BASE uhcp_titans_id 170
scoreboard players operation %hp uhcp_team *= %MULT uhcp_titans_id
scoreboard players operation %hp uhcp_team += %BASE uhcp_titans_id
execute store result storage ssiege:titan_health input.hp double 1 run scoreboard players get %hp uhcp_team

# Spawn Titan
execute in minecraft:overworld positioned 0 100 0 summon minecraft:villager run function ssiege:titans/tyrion/init_helper with storage ssiege:titan_health input
execute positioned 0 63 0 run spreadplayers 0 0 0 1 true @n[tag=UHCP_Titan]

# Announce
tellraw @a ["",{"text":"Tyrion, the Relic Forger","bold":true,"color":"red"},{"text":" has spawned! Defeat him to upgrade your team's armor to "},{"text":"Netherite","bold":true,"color":"yellow"},{"text":"."}]