scoreboard players add @s uhcp_timer 1

execute if score @s uhcp_timer matches 32 on passengers run kill @s
execute if score @s uhcp_timer matches 32 run playsound minecraft:entity.breeze.shoot master @a[distance=..12] ~ ~ ~ 1 1 1
execute if score @s uhcp_timer matches 32 run playsound minecraft:entity.warden.sonic_boom master @a[distance=..12] ~ ~ ~ 1 1 1
execute if score @s uhcp_timer matches 32 run particle minecraft:flash ~ ~ ~ 1.5 1 1.5 0.1 10 normal
execute unless score @s uhcp_timer matches 32.. run return 0
scoreboard players add @s uhcp_aug_tier 1

execute if score @s uhcp_aug_tier matches 2 run playsound minecraft:block.sculk_shrieker.shriek master @a[distance=..12] ~ ~ ~ 1 1.25 0.75
particle minecraft:raid_omen ~ ~ ~ 1.5 1 1.5 0.1 50 normal
particle minecraft:infested ~ ~ ~ 1.5 1 1.5 0.1 15 normal
execute positioned ~ ~1 ~ rotated 0 90 run function uhcp:titans/gigantus/circle_strike/particles
execute as @a[distance=..4,gamemode=survival] run damage @s 4 minecraft:magic

scoreboard players reset @s[scores={uhcp_aug_tier=2}] uhcp_aug_tier

kill @s[scores={uhcp_timer=42}]
