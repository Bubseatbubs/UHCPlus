data merge entity @s {equipment:{head:{id:"minecraft:oak_button",count:1}},drop_chances:{head:0.000},PersistenceRequired:1b,CanPickUpLoot:0b,CustomNameVisible:0b,Tags:["UHCP_Titan","UHCP_BoneColossus","UHCP_New"],CustomName:{"text":"Bone Colossus","color":"gold","bold":true},attributes:[{id:"minecraft:scale",base:9.0d},{id:"minecraft:step_height",base:2.0d},{id:"minecraft:follow_range",base:80.0d},{id:"minecraft:gravity",base:0.30d},{id:"minecraft:fall_damage_multiplier",base:0.0d},{id:"minecraft:knockback_resistance",base:0.9d},{id:"minecraft:attack_damage",base:0.0d},{id:"minecraft:armor",base:5.0d},{id:"minecraft:movement_speed",base:0.2d}]}
item replace entity @s weapon.mainhand with bone 1
scoreboard players set @s uhcp_titans_id 4

$attribute @s minecraft:max_health base set $(hp)
execute store result entity @s Health float 1 run scoreboard players get %hp uhcp_team
effect give @s glowing infinite 0 true