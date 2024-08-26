execute at @s run playsound minecraft:entity.zombie.ambient master @a[distance=..16] ~ ~ ~ 1 0.5 0.75
summon minecraft:silverfish ~ ~ ~ {Tags:["UHCP_Minion"],Health:20f,CustomName:'{"text":"Corpse Eater"}',attributes:[{id:"minecraft:attack_damage",base:6.0d},{id:"minecraft:movement_speed",base:0.24d},{id:"minecraft:max_health",base:20.0d},{id:"minecraft:scale",base:4.0d}]}

execute as @a[gamemode=survival,distance=..16] run effect give @s minecraft:hunger 15 5 false
execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1