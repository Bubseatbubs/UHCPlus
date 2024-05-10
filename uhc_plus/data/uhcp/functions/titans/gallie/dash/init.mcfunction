tag @s add UHCP_IsDashing
scoreboard players reset @s uhcp_titans_timer
execute as @s facing entity @p[gamemode=survival,distance=..32] feet positioned ^ ^ ^20 rotated ~ 0 run summon marker ~ ~ ~ {Tags:["UHCP_GallieDashMarker","UHCP_New","UHCP_Summon"]}
execute as @a[gamemode=survival,distance=..32] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1
scoreboard players reset @s uhcp_timer

playsound entity.zoglin.attack master @a[distance=..16] ~ ~ ~ 1 1 1
playsound entity.zoglin.attack master @a[distance=..16] ~ ~ ~ 1 1 1
playsound entity.zoglin.attack master @a[distance=..16] ~ ~ ~ 1 1 1
particle minecraft:angry_villager ~ ~ ~ 1.5 1.5 1.5 0.1 100 normal
scoreboard players operation @e[tag=UHCP_GallieDashMarker,tag=UHCP_New,sort=nearest,limit=1] uhcp_id = @s uhcp_id
tag @e remove UHCP_New