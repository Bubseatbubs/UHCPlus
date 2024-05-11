execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1

execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_CreeperMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_CreeperMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_CreeperMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_CreeperMarker"]}
execute at @s run function uhcp:titans/giga_creeper/lightning/summon_indicator

spreadplayers ~ ~ 5 15 false @e[tag=UHCP_CreeperMarker,distance=..16]
execute at @e[tag=UHCP_CreeperMarker] run summon minecraft:creeper ~ ~ ~ {Health:16f,ExplosionRadius:2b,Attributes:[{Name:generic.max_health,Base:24},{Name:generic.movement_speed,Base:0.35}]}
execute at @e[tag=UHCP_CreeperMarker] run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal

kill @e[tag=UHCP_CreeperMarker]