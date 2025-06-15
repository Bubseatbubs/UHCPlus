summon minecraft:lightning_bolt ~ ~ ~
execute as @a[distance=..2] at @s run summon minecraft:lightning_bolt ~ ~ ~
tag @s add UHCP_Featherstorm
scoreboard players set @a[distance=..10] uhcp_initStatus 0
execute as @a[distance=..10,gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team
execute as @a[distance=..8,scores={uhcp_initStatus=1..}] if score @s uhcp_initStatus = @a[tag=UHCP_Featherstorm,limit=1] uhcp_initStatus run effect give @s minecraft:resistance 1 5 true
tag @a remove UHCP_Featherstorm