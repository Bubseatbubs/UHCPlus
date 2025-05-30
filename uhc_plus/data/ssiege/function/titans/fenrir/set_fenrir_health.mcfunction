data merge entity @s {variant:"black",CustomNameVisible:0b,PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["UHCP_Titan","UHCP_Fenrir","UHCP_New"],CustomName:{"text":"Fenrir","color":"red","bold":true},attributes:[{id:"minecraft:scale",base:5.5d},{id:"minecraft:step_height",base:2.0d},{id:"minecraft:follow_range",base:80.0d},{id:"minecraft:fall_damage_multiplier",base:0.0d},{id:"minecraft:knockback_resistance",base:0.9d},{id:"minecraft:attack_damage",base:0.0d},{id:"minecraft:armor",base:30.0d},{id:"minecraft:movement_speed",base:0.3d}]}
$attribute @s max_health base set $(hp)
execute store result entity @s Health float 1 run scoreboard players get %hp uhcp_team
scoreboard players set @s uhcp_titans_id 3
spreadplayers 0 0 0 1 false @s