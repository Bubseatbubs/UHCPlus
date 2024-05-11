clear @s *[custom_data~{uhcp_consumable:17b}] 1
tag @s add UHCP_Owner
summon minecraft:wolf ~ ~ ~ {CollarColor:0b,variant:"black",CustomNameVisible:1b,Health:60f,Tags:["UHCP_Summon","UHCP_New"],CustomName:'{"text":"Fenrir Jr.","color":"dark_red","bold":true}',HandItems:[{id:"minecraft:diamond_axe",count:1},{}],body_armor_item:{id:"minecraft:wolf_armor",count:1},Attributes:[{Name:generic.knockback_resistance,Base:0.5},{Name:generic.max_health,Base:80},{Name:generic.scale,Base:2}]}
scoreboard players operation @e[type=minecraft:wolf,tag=UHCP_New,sort=nearest,limit=1] uhcp_team = @s uhcp_team
execute as @e[type=minecraft:wolf,tag=UHCP_New] run data modify entity @s Owner set from entity @p[tag=UHCP_Owner] UUID
tag @s remove UHCP_Owner
playsound minecraft:entity.wolf.howl master @s ~ ~ ~ 0.6 1 0.6