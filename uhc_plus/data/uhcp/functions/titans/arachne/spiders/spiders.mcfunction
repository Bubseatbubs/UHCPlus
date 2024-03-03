execute at @s run playsound entity.spider.death master @a[distance=..16] ~ ~ ~ 1 0.5 0.75

execute at @s run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SpiderMarker"]}
execute at @s run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SpiderMarker"]}
execute at @s run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SpiderMarker"]}

schedule function uhcp:titans/arachne/spiders/spread 1t