execute at @s run playsound entity.spider.death master @a[distance=..16] ~ ~ ~ 1 0.5 0.75
execute as @a[gamemode=survival,distance=..16] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1

execute at @s run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_WolfMarker"]}
execute at @s run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_WolfMarker"]}
execute at @s run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_WolfMarker"]}
execute at @s run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_WolfMarker"]}

schedule function uhcp:titans/fenrir/wolves/spread 1t