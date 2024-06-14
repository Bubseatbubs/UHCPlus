clear @s *[custom_data~{uhcp_consumable:17b}] 1
tag @s add UHCP_Owner
summon minecraft:wolf ~ ~ ~ {CollarColor:0b,variant:"black",CustomNameVisible:1b,Health:60f,Tags:["UHCP_Summon","UHCP_New"],CustomName:'{"text":"Fenrir Jr.","color":"dark_red","bold":true}',HandItems:[{id:"minecraft:diamond_axe",count:1},{}],body_armor_item:{id:"minecraft:wolf_armor",count:1},attributes:[{id:"minecraft:generic.knockback_resistance",base:0.5d},{id:"minecraft:generic.max_health",base:80.0d},{id:"minecraft:generic.scale",base:2.0d}]}
scoreboard players operation @n[type=minecraft:wolf,tag=UHCP_New] uhcp_team = @s uhcp_team
execute as @e[type=minecraft:wolf,tag=UHCP_New] run data modify entity @s Owner set from entity @p[tag=UHCP_Owner] UUID
tag @s remove UHCP_Owner
playsound minecraft:entity.wolf.howl master @s ~ ~ ~ 0.6 1 0.6
