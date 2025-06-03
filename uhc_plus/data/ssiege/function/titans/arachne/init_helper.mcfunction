# Initializes the Titan, setting its data, Titan ID, and health
data merge entity @s {CustomNameVisible:0b,PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["UHCP_Titan","UHCP_Arachne","UHCP_New"],CustomName:{"bold":true,"color":"red","text":"Arachne"},equipment:{chest:{id:"minecraft:chest",count:1,components:{"minecraft:max_stack_size":1,"minecraft:custom_data":{uhcp_titan_loot:1b,uhcp_titan_id:1b}}}},drop_chances:{chest:1.000},attributes:[{id:"minecraft:armor",base:5.0d},{id:"minecraft:attack_damage",base:0.0d},{id:"minecraft:fall_damage_multiplier",base:0.0d},{id:"minecraft:follow_range",base:80.0d},{id:"minecraft:knockback_resistance",base:0.9d},{id:"minecraft:scale",base:4.0d},{id:"minecraft:step_height",base:2.0d}]}
scoreboard players set @s uhcp_titans_id 1
spreadplayers 0 0 0 1 false @s
$attribute @s minecraft:max_health base set $(hp)
execute store result entity @s Health float 1 run scoreboard players get %hp uhcp_team
