execute at @s run playsound entity.spider.hurt master @a[distance=..16] ~ ~ ~ 1 0.5 0.75

execute at @a[gamemode=survival,distance=..16] run setblock ~ ~ ~ cobweb destroy
execute at @a[gamemode=survival,distance=..16] run particle block cobweb ~ ~ ~ 0.5 0.5 0.5 0.1 25 normal
execute as @a[gamemode=survival,distance=..16] at @s run playsound block.stone.place master @a[distance=..8] ~ ~ ~ 1 1 0.25

execute as @e[tag=UHCP_ArachneSpider] at @s run function uhcp:titans/arachne/spiders/leap