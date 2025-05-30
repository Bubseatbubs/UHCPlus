summon minecraft:villager ~ ~ ~ {CanPickUpLoot:0b,equipment:{chest:{id:"minecraft:chest",count:1,components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{uhcp_titan_loot:1b,uhcp_titan_id:10b}}}},drop_chances:{chest:1.000},PersistenceRequired:1b,Health:1000f,Tags:["UHCP_Titan","UHCP_Tyrion","UHCP_New"],Passengers:[{id:"minecraft:silverfish",PersistenceRequired:1b,CanPickUpLoot:0b,Silent:1b,Invulnerable:1b,Tags:["UHCP_TyrianAI"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0.0d}]}],CustomName:{"text":"Tyrion, Relic Forger","color":"red","bold":true},attributes:[{id:"minecraft:armor",base:5.0d},{id:"minecraft:attack_damage",base:0.0d},{id:"minecraft:fall_damage_multiplier",base:0.0d},{id:"minecraft:follow_range",base:80.0d},{id:"minecraft:knockback_resistance",base:0.9d},{id:"minecraft:max_health",base:1000.0d},{id:"minecraft:movement_speed",base:0.32d},{id:"minecraft:scale",base:8.0d},{id:"minecraft:step_height",base:2.0d}],Age:2147483647,VillagerData:{level:99,profession:"minecraft:weaponsmith",type:"minecraft:swamp"},Offers:{}}
spreadplayers 0 0 0 1 false @n[tag=UHCP_Titan]

# Initialize boss ID
scoreboard players set @n[tag=UHCP_New,tag=UHCP_Titan] uhcp_titans_id 10
tag @e remove UHCP_New

# Scale Titan health based on team size
execute store result score %hp uhcp_team run execute if entity @a[team=blue]
scoreboard players set %MULT uhcp_titans_id 85
scoreboard players set %BASE uhcp_titans_id 170
scoreboard players operation %hp uhcp_team *= %MULT uhcp_titans_id
scoreboard players operation %hp uhcp_team += %BASE uhcp_titans_id

execute store result entity @n[tag=UHCP_Titan] attributes[{Name:"minecraft:generic.max_health"}].base float 1 run scoreboard players get %hp uhcp_team
execute store result entity @n[tag=UHCP_Titan] Health float 1 run scoreboard players get %hp uhcp_team