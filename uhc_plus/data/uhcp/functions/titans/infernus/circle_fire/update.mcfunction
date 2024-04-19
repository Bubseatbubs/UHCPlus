scoreboard players add @s uhcp_timer 1

execute if score @s uhcp_timer matches 32 on passengers run kill @s
execute if score @s uhcp_timer matches 32 run playsound minecraft:entity.blaze.shoot master @a[distance=..12] ~ ~ ~ 1 1 1
execute if score @s uhcp_timer matches 32 run playsound minecraft:entity.warden.sonic_boom master @a[distance=..12] ~ ~ ~ 1 1 1
execute if score @s uhcp_timer matches 32 run particle minecraft:flash ~ ~ ~ 1.5 1 1.5 0.1 10 normal
execute unless score @s uhcp_timer matches 32.. run return 0
scoreboard players add @s uhcp_aug_tier 1

setblock ~ ~-1 ~ magma_block
particle minecraft:flame ~ ~ ~ 1.5 1 1.5 0.1 50 normal
particle minecraft:small_flame ~ ~ ~ 1.5 1 1.5 0.1 15 normal
execute positioned ~ ~2 ~ rotated 0 90 run function uhcp:titans/infernus/circle_fire/particles
execute as @a[distance=..4,gamemode=survival] run damage @s 4 magic

execute if score @s uhcp_aug_tier matches 2 run scoreboard players reset @s uhcp_aug_tier

execute if score @s uhcp_timer matches 42 run kill @s