execute at @s run playsound minecraft:entity.zombie.ambient master @a[distance=..16] ~ ~ ~ 1 0.5 0.75
summon minecraft:guardian ~ ~ ~ {Tags:["UHCP_Minion"],Health:5f,attributes:[{id:"minecraft:generic.scale",base:3.0d}]}

execute as @a[gamemode=survival,distance=..16] run effect give @s minecraft:slowness 8 1 false
execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1