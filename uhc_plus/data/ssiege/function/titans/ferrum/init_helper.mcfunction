data merge entity @s {CustomNameVisible:0b,PersistenceRequired:1b,CanPickUpLoot:0b,PlayerCreated:0b,Tags:["UHCP_Titan","UHCP_Ferrum","UHCP_New"],CustomName:{"text":"Ferrum","color":"gold","bold":true},attributes:[{id:"minecraft:armor",base:5.0d},{id:"minecraft:attack_damage",base:6.0d},{id:"minecraft:fall_damage_multiplier",base:0.0d},{id:"minecraft:follow_range",base:80.0d},{id:"minecraft:movement_speed",base:0.3d},{id:"minecraft:scale",base:5.0d},{id:"minecraft:step_height",base:2.0d}]}
scoreboard players set @s uhcp_titans_id 8

$attribute @s minecraft:max_health base set $(hp)
execute store result entity @s Health float 1 run scoreboard players get %hp uhcp_team