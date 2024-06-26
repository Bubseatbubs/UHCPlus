scoreboard players set @s uhcp_top_cd 12000
scoreboard players set @s[scores={uhcp_augment=104}] uhcp_top_cd 6000

scoreboard players reset @s uhcp_top_delay
scoreboard players set @s uhcp_initStatus 0
execute if entity @e[tag=UHCP_TopCheck,distance=..3,limit=1] at @s run function uhcp:top/refresh
kill @e[tag=UHCP_TopCheck,limit=1]
execute if score @s uhcp_initStatus matches 1 run return fail

execute at @s run playsound minecraft:block.end_portal.spawn master @a[distance=..84] ~ ~ ~ 1 1 0.25
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..84] ~ ~ ~ 1 1 0.25
particle minecraft:enchant ~ ~ ~ 0.55 0.25 0.55 1 50 normal
particle minecraft:witch ~ ~ ~ 0.55 0.75 0.55 1 500 normal
execute unless score @s uhcp_augment matches 104 run effect give @s minecraft:weakness 10 255 false
execute unless score @s uhcp_augment matches 104 run effect give @s minecraft:mining_fatigue 10 255 false
