execute at @s run playsound minecraft:entity.spider.death master @a[distance=..16] ~ ~ ~ 1 0.5 0.75
execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1

execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SpiderMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SpiderMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SpiderMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SpiderMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SpiderMarker"]}

spreadplayers ~ ~ 5 15 false @e[tag=UHCP_SpiderMarker,distance=..16]
execute at @e[tag=UHCP_SpiderMarker] run summon minecraft:spider ~ ~ ~ {Health:10f,Motion:[0.0,0.8,0.0],CustomNameVisible:0b,PersistenceRequired:1b,Tags:["UHCP_ArachneSpider","UHCP_Minion"],Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.scale",Base:2},{Name:"generic.knockback_resistance",Base:0},{Name:"generic.attack_damage",Base:5},{Name:"generic.armor",Base:1}],Passengers:[{id:"minecraft:zombie",Silent:1b,Invulnerable:1b,Tags:["UHCP_Summon","UHCP_ArachneSpiderAI"],ArmorItems:[{},{},{},{id:"minecraft:oak_button",tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],Attributes:[{Name:generic.attack_damage,Base:5},{Name:generic.scale,Base:0.016}]}]}
execute at @e[tag=UHCP_SpiderMarker] run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal

kill @e[tag=UHCP_SpiderMarker]
