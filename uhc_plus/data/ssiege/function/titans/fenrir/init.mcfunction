# Initialize boss ID
# Scale Titan health based on team size
execute store result score %hp uhcp_team run execute if entity @a[team=blue]
scoreboard players set %MULT uhcp_titans_id 60
scoreboard players set %BASE uhcp_titans_id 125
scoreboard players operation %hp uhcp_team *= %MULT uhcp_titans_id
scoreboard players operation %hp uhcp_team += %BASE uhcp_titans_id

execute store result storage ssiege:titan_health input.hp float 1 run scoreboard players get %hp uhcp_team
execute in minecraft:overworld positioned 0 100 0 summon minecraft:wolf run function ssiege:titans/fenrir/set_fenrir_health with storage uhcp:titan_health input