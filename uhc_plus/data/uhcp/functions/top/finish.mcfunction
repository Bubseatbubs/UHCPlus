playsound block.end_portal.spawn master @a[distance=..32] ~ ~ ~ 1 1 0.25
playsound entity.lightning_bolt.thunder master @a[distance=..32] ~ ~ ~ 1 1 0.25
scoreboard players set @s uhcp_topCD 12000
execute if entity @e[type=marker,tag=uhcp_topCheck,distance=..3,limit=1] as @s at @s run function uhcp:top/refresh
particle enchant ~ ~ ~ 0.55 0.25 0.55 1 50 normal
particle witch ~ ~ ~ 0.55 0.75 0.55 1 500 normal
effect give @s weakness 10 255 false
effect give @s mining_fatigue 10 255 false

scoreboard players reset @s uhcp_topDelay
kill @e[type=marker,tag=uhcp_topCheck,limit=1]
