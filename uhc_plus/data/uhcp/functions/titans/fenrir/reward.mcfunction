advancement revoke @s only uhcp:titans/killed_fenrir
tag @s add UHCP_Owner
tellraw @a [{"text":"Fenrir","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@s","color":"gold"},{"text":"!","color":"white"}]

function uhcp:titans/reward
summon wolf ~ ~ ~ {CollarColor:0b,variant:"black",CustomNameVisible:1b,Health:60f,Tags:["UHCP_Summon","UHCP_New"],CustomName:'{"text":"Fenrir Jr.","color":"dark_red","bold":true}',HandItems:[{id:"minecraft:diamond_axe",count:1},{}],body_armor_item:{id:"minecraft:wolf_armor",count:1},Attributes:[{Name:generic.knockback_resistance,Base:0.5},{Name:generic.max_health,Base:80},{Name:generic.scale,Base:2}]}
scoreboard players operation @e[type=wolf,tag=UHCP_New,sort=nearest,limit=1] uhcp_team = @s uhcp_team
execute as @e[type=wolf,tag=UHCP_New] run data modify entity @s Owner set from entity @p[tag=UHCP_Owner] UUID
tellraw @s [{"text":"You've slain"},{"text":" Fenrir","color":"gold"},{"text":"! You gained the aid of","color":"white"},{"text":" Fenrir Jr.","color":"gold"},{"text":"!","color":"white"}]
tag @s remove UHCP_Owner