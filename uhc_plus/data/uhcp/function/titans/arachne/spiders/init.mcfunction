execute at @s run playsound minecraft:entity.spider.death master @a[distance=..16] ~ ~ ~ 1 0.5 0.75
execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1

execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SpiderMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SpiderMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SpiderMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SpiderMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SpiderMarker"]}

spreadplayers ~ ~ 5 15 false @e[tag=UHCP_SpiderMarker,distance=..16]
execute at @e[tag=UHCP_SpiderMarker] run summon minecraft:spider ~ ~ ~ {Health:10f,Motion:[0.0,0.8,0.0],CustomNameVisible:0b,PersistenceRequired:1b,Tags:["UHCP_ArachneSpider","UHCP_Minion"],attributes:[{id:"minecraft:max_health",base:20.0d},{id:"minecraft:scale",base:2.0d},{id:"minecraft:knockback_resistance",base:0.0d},{id:"minecraft:attack_damage",base:5.0d},{id:"minecraft:armor",base:1.0d}],Passengers:[{id:"minecraft:zombie",Silent:1b,Invulnerable:1b,Tags:["UHCP_Summon","UHCP_ArachneSpiderAI"],ArmorItems:[{},{},{},{id:"minecraft:oak_button",components:{"minecraft:enchantments":{levels:{"minecraft:vanishing_curse":1}}},count:1}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:5.0d},{id:"minecraft:scale",base:0.016d}]}]}
execute at @e[tag=UHCP_SpiderMarker] run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal

kill @e[tag=UHCP_SpiderMarker]
