summon minecraft:cat ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Invulnerable:1b,CanPickUpLoot:0b,Tags:["UHCP_SnifferControl","UHCP_InitScore","UHCP_Invulnerable"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0.0d},{id:"minecraft:scale",base:0.1d},{id:"minecraft:movement_speed",base:0.1d}]}
summon minecraft:sniffer ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,CanPickUpLoot:0b,Tags:["UHCP_Sniffa","UHCP_Summon","UHCP_InitScore","UHCP_Invulnerable"],attributes:[{id:"minecraft:scale",base:0.5d}],CustomName:{"text":"SNIFFA","color":"gold","bold":true,"underlined":true}}

execute as @e[type=minecraft:cat,tag=UHCP_InitScore] run data modify entity @s Owner set from entity @p[tag=UHCP_Owner] UUID
scoreboard players add %entities uhcp_game_id 1
scoreboard players operation @e[tag=UHCP_InitScore] uhcp_game_id = %entities uhcp_game_id
scoreboard players operation @e[tag=UHCP_InitScore] uhcp_team = @p[tag=UHCP_Owner] uhcp_team
team join no_collision @e[tag=UHCP_InitScore]
tag @e[tag=UHCP_InitScore] remove UHCP_InitScore
