summon cat ~ ~ ~ {Silent:1b,Invulnerable:1b,CanPickUpLoot:0b,Tags:["UHCP_SnifferControl","UHCP_InitScore"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:20000000,show_particles:0b}],Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.scale",Base:0.1},{Name:"generic.movement_speed",Base:0.2}]}
summon sniffer ~ ~ ~ {Invulnerable:1b,Tags:["UHCP_Sniffa","UHCP_Summon","UHCP_InitScore"],Attributes:[{Name:"generic.scale",Base:0.5}],CustomName:'{"text":"SNIFFA","color":"gold","bold":true,"underlined":true}'}

execute as @e[type=cat,tag=UHCP_InitScore] run data modify entity @s Owner set from entity @a[tag=UHCP_Owner,sort=nearest,limit=1] UUID
scoreboard players add %global uhcp_id 1
scoreboard players operation @e[tag=UHCP_InitScore] uhcp_id = %global uhcp_id
team join no_collision @e[tag=UHCP_InitScore]
tag @e[tag=UHCP_InitScore] remove UHCP_InitScore