tag @s add UHCP_Beastmaster
summon minecraft:wolf ~ ~ ~ {Health:50f,attributes:[{id:"minecraft:generic.max_health",base:50.0d}],Tags:["UHCP_New"],variant:"minecraft:ashen"}
summon minecraft:wolf ~ ~ ~ {Health:50f,attributes:[{id:"minecraft:generic.max_health",base:50.0d}],Tags:["UHCP_New"],variant:"minecraft:pale"}
summon minecraft:wolf ~ ~ ~ {Health:50f,attributes:[{id:"minecraft:generic.max_health",base:50.0d}],Tags:["UHCP_New"],variant:"minecraft:black"}
summon minecraft:wolf ~ ~ ~ {Health:50f,attributes:[{id:"minecraft:generic.max_health",base:50.0d}],Tags:["UHCP_New"],variant:"minecraft:chestnut"}
summon minecraft:wolf ~ ~ ~ {Health:50f,attributes:[{id:"minecraft:generic.max_health",base:50.0d}],Tags:["UHCP_New"],variant:"minecraft:rusty"}
summon minecraft:wolf ~ ~ ~ {Health:50f,attributes:[{id:"minecraft:generic.max_health",base:50.0d}],Tags:["UHCP_New"],variant:"minecraft:spotted"}
summon minecraft:wolf ~ ~ ~ {Health:50f,attributes:[{id:"minecraft:generic.max_health",base:50.0d}],Tags:["UHCP_New"],variant:"minecraft:striped"}
summon minecraft:wolf ~ ~ ~ {Health:50f,attributes:[{id:"minecraft:generic.max_health",base:50.0d}],Tags:["UHCP_New"],variant:"minecraft:snowy"}

execute as @e[type=minecraft:wolf,tag=UHCP_New] run data modify entity @s Owner set from entity @n[tag=UHCP_Beastmaster] UUID
execute as @e[type=minecraft:wolf,tag=UHCP_New,sort=random,limit=1] run data merge entity @s {Health:80f,HandItems:[{id:"minecraft:diamond_axe",components:{"minecraft:enchantments":{levels:{"minecraft:vanishing_curse":1}}}},{}],body_armor_item:{id:"minecraft:wolf_armor"},attributes:[{id:"minecraft:generic.max_health",base:80.0d},{id:"minecraft:generic.scale",base:2.0d},{id:"minecraft:generic.movement_speed",base:0.4d},{id:"minecraft:generic.knockback_resistance",base:0.25d},{id:"minecraft:generic.armor",base:10.0d},{id:"minecraft:generic.armor_toughness",base:1.0d}]}
spreadplayers ~ ~ 3.5 10 false @e[type=minecraft:wolf,tag=UHCP_New]
scoreboard players operation @e[type=minecraft:wolf,tag=UHCP_New] uhcp_team = @s uhcp_team
scoreboard players operation @e[type=minecraft:wolf,tag=UHCP_New] uhcp_id = @s uhcp_id
tag @e remove UHCP_New
tag @s remove UHCP_Beastmaster
