data merge entity @s {PersistenceRequired:1b,CanPickUpLoot:0b,CustomNameVisible:0b,Tags:["UHCP_Titan","UHCP_Infernus","UHCP_New"],CustomName:{"text":"Infernus","color":"gold","bold":true},attributes:[{id:"minecraft:armor",base:5.0d},{id:"minecraft:attack_damage",base:0.0d},{id:"minecraft:fall_damage_multiplier",base:0.0d},{id:"minecraft:follow_range",base:80.0d},{id:"minecraft:gravity",base:1.0d},{id:"minecraft:jump_strength",base:0.0d},{id:"minecraft:knockback_resistance",base:0.9d},{id:"minecraft:movement_speed",base:0.27d},{id:"minecraft:scale",base:9.0d},{id:"minecraft:step_height",base:2.0d}]}
scoreboard players set @s uhcp_titans_id 9

$attribute @s minecraft:max_health base set $(hp)
execute store result entity @s Health float 1 run scoreboard players get %hp uhcp_team