execute at @s run playsound minecraft:entity.spider.ambient master @a[distance=..16] ~ ~ ~ 1 0.5 0.75

execute as @a[gamemode=survival,distance=..16] run effect give @s minecraft:darkness 3 10 true
execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1

effect give @s minecraft:speed 3 0 false
effect give @e[tag=UHCP_ArachneSpider] minecraft:speed 3 1 false

execute at @s run function uhcp:titans/arachne/leap
