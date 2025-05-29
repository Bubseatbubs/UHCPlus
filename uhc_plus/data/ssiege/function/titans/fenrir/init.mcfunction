summon minecraft:wolf 0 100 0 {variant:"black",CustomNameVisible:0b,PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["UHCP_Titan","UHCP_Fenrir","UHCP_New"],CustomName:{"text":"Fenrir","color":"red","bold":true},attributes:[{id:"minecraft:scale",base:5.5d},{id:"minecraft:step_height",base:2.0d},{id:"minecraft:follow_range",base:80.0d},{id:"minecraft:fall_damage_multiplier",base:0.0d},{id:"minecraft:knockback_resistance",base:0.9d},{id:"minecraft:attack_damage",base:0.0d},{id:"minecraft:armor",base:30.0d},{id:"minecraft:movement_speed",base:0.3d}]}
spreadplayers 0 0 0 1 false @n[tag=UHCP_Titan]

# Initialize boss ID
scoreboard players set @n[tag=UHCP_New,tag=UHCP_Titan] uhcp_titans_id 3

# Scale Titan health based on team size
execute store result score %hp uhcp_team run execute if entity @a[team=blue]
scoreboard players set %MULT uhcp_titans_id 60
scoreboard players set %BASE uhcp_titans_id 125
scoreboard players operation %hp uhcp_team *= %MULT uhcp_titans_id
scoreboard players operation %hp uhcp_team += %BASE uhcp_titans_id

execute store result entity @n[tag=UHCP_Titan] attributes[{id:"minecraft:max_health"}].base double 1 run scoreboard players get %hp uhcp_team
execute store result entity @n[tag=UHCP_Titan] Health double 1 run scoreboard players get %hp uhcp_team