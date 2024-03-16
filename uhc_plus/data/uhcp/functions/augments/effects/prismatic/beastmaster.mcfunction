tag @s add UHCP_Beastmaster
summon wolf ~ ~ ~ {Health:50f,Attributes:[{Name:"generic.max_health",Base:50}],Tags:["UHCP_New"],variant:"minecraft:ashen"}
summon wolf ~ ~ ~ {Health:50f,Attributes:[{Name:"generic.max_health",Base:50}],Tags:["UHCP_New"],variant:"minecraft:pale"}
summon wolf ~ ~ ~ {Health:50f,Attributes:[{Name:"generic.max_health",Base:50}],Tags:["UHCP_New"],variant:"minecraft:black"}
summon wolf ~ ~ ~ {Health:50f,Attributes:[{Name:"generic.max_health",Base:50}],Tags:["UHCP_New"],variant:"minecraft:chestnut"}
summon wolf ~ ~ ~ {Health:50f,Attributes:[{Name:"generic.max_health",Base:50}],Tags:["UHCP_New"],variant:"minecraft:rusty"}
summon wolf ~ ~ ~ {Health:50f,Attributes:[{Name:"generic.max_health",Base:50}],Tags:["UHCP_New"],variant:"minecraft:spotted"}
summon wolf ~ ~ ~ {Health:50f,Attributes:[{Name:"generic.max_health",Base:50}],Tags:["UHCP_New"],variant:"minecraft:striped"}
summon wolf ~ ~ ~ {Health:50f,Attributes:[{Name:"generic.max_health",Base:50}],Tags:["UHCP_New"],variant:"minecraft:snowy"}

execute as @e[type=wolf,tag=UHCP_New] run data modify entity @s Owner set from entity @e[tag=UHCP_Beastmaster,sort=nearest,limit=1] UUID
execute as @e[type=wolf,tag=UHCP_New,sort=random,limit=1] run data merge entity @s {Health:80f,HandItems:[{id:"minecraft:diamond_axe",components:{"minecraft:enchantments":{levels:{"minecraft:vanishing_curse":1}}}},{}],body_armor_item:{id:"minecraft:wolf_armor",Count:1b},Attributes:[{Name:"generic.max_health",Base:80},{Name:"generic.scale",Base:2.0},{Name:"generic.movement_speed",Base:0.4},{Name:"generic.knockback_resistance",Base:0.25},{Name:"generic.armor",Base:10},{Name:"generic.armor_toughness",Base:1}]}
spreadplayers ~ ~ 3.5 10 false @e[type=wolf,tag=UHCP_New]
scoreboard players operation @e[type=wolf,tag=UHCP_New] uhcp_team = @s uhcp_team
scoreboard players operation @e[type=wolf,tag=UHCP_New] uhcp_id = @s uhcp_id
tag @e remove UHCP_New
tag @s remove UHCP_Beastmaster