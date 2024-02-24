scoreboard players set @s uhcp_topCD 12000
execute if score @s uhcp_a_selectedAugment matches 104 run scoreboard players set @s uhcp_topCD 6000

scoreboard players reset @s uhcp_topDelay
scoreboard players set @s uhcp_initStatus 0
execute if entity @e[type=marker,tag=uhcp_topCheck,distance=..3,limit=1] as @s at @s run function uhcp:top/refresh
kill @e[type=marker,tag=uhcp_topCheck,limit=1]
execute if score @s uhcp_initStatus matches 1 run return fail

execute at @s run playsound block.end_portal.spawn master @a[distance=..84] ~ ~ ~ 1 1 0.25
execute at @s run playsound entity.lightning_bolt.thunder master @a[distance=..84] ~ ~ ~ 1 1 0.25
particle enchant ~ ~ ~ 0.55 0.25 0.55 1 50 normal
particle witch ~ ~ ~ 0.55 0.75 0.55 1 500 normal
execute unless score @s uhcp_a_selectedAugment matches 104 run effect give @s weakness 10 255 false
execute unless score @s uhcp_a_selectedAugment matches 104 run effect give @s mining_fatigue 10 255 false
