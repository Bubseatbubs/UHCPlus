data merge entity @s {PersistenceRequired:1b,CanPickUpLoot:0b,CustomNameVisible:0b,Tags:["UHCP_Titan","UHCP_BoneColossus","UHCP_New"],CustomName:{"text":"Bone Colossus","color":"red","bold":true},attributes:[{id:"minecraft:scale",base:9.0d},{id:"minecraft:step_height",base:2.0d},{id:"minecraft:follow_range",base:80.0d},{id:"minecraft:gravity",base:0.30d},{id:"minecraft:fall_damage_multiplier",base:0.0d},{id:"minecraft:knockback_resistance",base:0.9d},{id:"minecraft:attack_damage",base:0.0d},{id:"minecraft:armor",base:5.0d},{id:"minecraft:movement_speed",base:0.2d}]}
scoreboard players set @s uhcp_titans_id 4
spreadplayers 0 0 0 1 false @s
$attribute @s minecraft:max_health base set $(hp)
execute store result entity @s Health float 1 run scoreboard players get %hp uhcp_team