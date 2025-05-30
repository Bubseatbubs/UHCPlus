summon minecraft:allay ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,DuplicationCooldown:2147483647,equipment:{chest:{id:"minecraft:chest",count:1,components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{uhcp_titan_loot:1b,uhcp_titan_id:7b}}}},drop_chances:{chest:1.000},Health:800f,Tags:["UHCP_Titan","UHCP_New","UHCP_Seraphim"],Passengers:[{id:"minecraft:zombie",Silent:1b,Invulnerable:1b,Tags:["UHCP_SeraphimAI","UHCP_Summon"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:scale",base:0.016d},{id:"minecraft:flying_speed",base:0.6d},{id:"minecraft:follow_range",base:80.0d}]}],CustomName:{"text":"Seraphim","bold":true},attributes:[{id:"minecraft:armor",base:5.0d},{id:"minecraft:attack_damage",base:4.0d},{id:"minecraft:max_health",base:800.0d},{id:"minecraft:knockback_resistance",base:0.9d},{id:"minecraft:scale",base:10.0d},{id:"minecraft:step_height",base:2.0d}]}
spreadplayers 0 0 0 1 false @n[tag=UHCP_Titan]

# Initialize boss ID
scoreboard players set @n[tag=UHCP_New,tag=UHCP_Titan] uhcp_titans_id 3
tag @e remove UHCP_New

# Scale Titan health based on team size
execute store result score %hp uhcp_team run execute if entity @a[team=blue]
scoreboard players set %MULT uhcp_titans_id 70
scoreboard players set %BASE uhcp_titans_id 125
scoreboard players operation %hp uhcp_team *= %MULT uhcp_titans_id
scoreboard players operation %hp uhcp_team += %BASE uhcp_titans_id

execute store result entity @n[tag=UHCP_Titan] attributes[{Name:"minecraft:generic.max_health"}].base float 1 run scoreboard players get %hp uhcp_team
execute store result entity @n[tag=UHCP_Titan] Health float 1 run scoreboard players get %hp uhcp_team