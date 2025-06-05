execute store success score %prev_killed uhcp_titans_id run kill @e[tag=UHCP_BoneColossus]
execute if score %prev_killed uhcp_titans_id matches 1.. run tellraw @a ["",{"text":"Bone Colossus","bold":true,"color":"gold"},{"text":" disappeared..."}]

# Calculate Titan health based on player count
execute store result score %hp uhcp_team run execute if entity @a
scoreboard players set %MULT uhcp_titans_id 22
scoreboard players set %BASE uhcp_titans_id 95
scoreboard players operation %hp uhcp_team *= %MULT uhcp_titans_id
scoreboard players operation %hp uhcp_team += %BASE uhcp_titans_id
execute store result storage ssiege:titan_health input.hp double 1 run scoreboard players get %hp uhcp_team

# Spawn Titan
summon minecraft:hoglin 0 200 0 {Tags:["UHCP_Titan","UHCP_Gallie","UHCP_New"],Passengers:[{id:"minecraft:piglin",PersistenceRequired:1b,CanPickUpLoot:0b,IsImmuneToZombification:1b,CannotHunt:1b,equipment:{mainhand:{id:"minecraft:crossbow",count:1,components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:enchantment_glint_override":false}}},drop_chances:{mainhand:0.000},Tags:["UHCP_Summon","UHCP_Bellan"],attributes:[{id:"minecraft:fall_damage_multiplier",base:0},{id:"minecraft:scale",base:2.0d}]}],CustomName:{"bold":true,"color":"gold","text":"Bellan"}}
execute as @e[tag=UHCP_Gallie] run function ssiege:titans/gallie/init_helper with storage ssiege:titan_health input
execute positioned over motion_blocking_no_leaves as @e[tag=UHCP_Titan] run tp @s ~ ~ ~

# Announce
title @a times 20 40 20
title @a subtitle {"text":"have spawned!","color":"gold"}
title @a title {"text":"Gallie & Bellan","color":"gold"}
tellraw @a ["",{"text":"Gallie & Bellan","bold":true,"color":"gold"},{"text":" have spawned! Defeat them to gain "},{"text":"permanent max HP","bold":true,"color":"yellow"},{"text":" for your team."}]