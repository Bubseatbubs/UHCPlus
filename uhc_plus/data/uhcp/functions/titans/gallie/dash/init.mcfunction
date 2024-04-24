tag @s add UHCP_IsDashing
scoreboard players reset @s uhcp_titans_timer
execute as @a[gamemode=survival,distance=..32] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1
scoreboard players reset @s uhcp_timer
execute as @p[gamemode=survival,distance=..32] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^-10 run summon marker ~ ~ ~ {Tags:["UHCP_GallieDashMarker","UHCP_New","UHCP_Summon"]}
playsound entity.zoglin.attack master @a[distance=..16] ~ ~ ~ 1 1 1
playsound entity.zoglin.attack master @a[distance=..16] ~ ~ ~ 1 1 1
playsound entity.zoglin.attack master @a[distance=..16] ~ ~ ~ 1 1 1
particle minecraft:angry_villager ~ ~ ~ 1.5 1.5 1.5 0.1 100 normal
scoreboard players operation @e[tag=UHCP_GallieDashMarker,tag=UHCP_New,sort=nearest,limit=1] uhcp_id = @s uhcp_id