summon minecraft:hoglin ~ ~ ~ {CustomNameVisible:1b,CanPickUpLoot:0b,equipment:{chest:{id:"minecraft:chest",count:1,components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{uhcp_titan_loot:1b,uhcp_titan_id:12b}}}},drop_chances:{chest:1.000},PersistenceRequired:1b,Health:650f,IsImmuneToZombification:1b,Tags:["UHCP_Titan","UHCP_Gallie","UHCP_New"],Passengers:[{id:"minecraft:piglin",PersistenceRequired:1b,CanPickUpLoot:0b,IsImmuneToZombification:1b,CannotHunt:1b,equipment:{mainhand:{id:"minecraft:crossbow",count:1,components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:enchantment_glint_override":false}}},drop_chances:{mainhand:0.000},Tags:["UHCP_Summon","UHCP_Bellan"],attributes:[{id:"minecraft:scale",base:2.0d}]}],CustomName:{"bold":true,"color":"red","text":"Bellan"},active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:armor",base:5.0d},{id:"minecraft:attack_damage",base:4.0d},{id:"minecraft:fall_damage_multiplier",base:0.0d},{id:"minecraft:follow_range",base:80.0d},{id:"minecraft:gravity",base:0.3d},{id:"minecraft:knockback_resistance",base:1.0d},{id:"minecraft:max_health",base:600.0d},{id:"minecraft:movement_speed",base:0.2d},{id:"minecraft:scale",base:5.0d},{id:"minecraft:step_height",base:2.0d}]}
spreadplayers 0 0 0 1 false @n[tag=UHCP_Titan]

# Initialize boss ID
scoreboard players set @n[tag=UHCP_New,tag=UHCP_Titan] uhcp_titans_id 12
tag @e remove UHCP_New

# Scale Titan health based on team size
execute store result score %hp uhcp_team run execute if entity @a[team=blue]
scoreboard players set %MULT uhcp_titans_id 90
scoreboard players set %BASE uhcp_titans_id 190
scoreboard players operation %hp uhcp_team *= %MULT uhcp_titans_id
scoreboard players operation %hp uhcp_team += %BASE uhcp_titans_id

execute store result entity @n[tag=UHCP_Titan] attributes[{Name:"minecraft:generic.max_health"}].base float 1 run scoreboard players get %hp uhcp_team
execute store result entity @n[tag=UHCP_Titan] Health float 1 run scoreboard players get %hp uhcp_team