execute at @s run playsound minecraft:entity.wolf.growl master @a[distance=..16] ~ ~ ~ 1 0.5 0.75
execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1

execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_WolfMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_WolfMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_WolfMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_WolfMarker"]}

spreadplayers ~ ~ 5 15 false @e[tag=UHCP_WolfMarker,distance=..16]
execute at @e[tag=UHCP_WolfMarker] run summon minecraft:wolf ~ ~ ~ {Tags:["UHCP_Minion"],variant:"black",Tags:["UHCP_FenrirMinion","UHCP_Summon"],Health:5f,Motion:[0.0,0.25,0.0],CustomNameVisible:0b,PersistenceRequired:1b,attributes:[{id:"minecraft:generic.max_health",base:20.0d},{id:"minecraft:generic.knockback_resistance",base:0.0d},{id:"minecraft:generic.attack_damage",base:5.0d},{id:"minecraft:generic.armor",base:1.0d}]}
execute at @e[tag=UHCP_WolfMarker] run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal

kill @e[tag=UHCP_WolfMarker]
