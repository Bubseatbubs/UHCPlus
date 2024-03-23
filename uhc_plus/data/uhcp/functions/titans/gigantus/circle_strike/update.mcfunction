scoreboard players add @s uhcp_a_timer 1

execute if score @s uhcp_a_timer matches 8 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
execute if score @s uhcp_a_timer matches 8 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
execute if score @s uhcp_a_timer matches 16 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
execute if score @s uhcp_a_timer matches 16 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
execute if score @s uhcp_a_timer matches 24 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
execute if score @s uhcp_a_timer matches 24 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1

execute if score @s uhcp_a_timer matches 32 on passengers run kill @s
execute if score @s uhcp_a_timer matches 32 run playsound minecraft:entity.breeze.shoot master @a[distance=..12] ~ ~ ~ 1 1 1
execute if score @s uhcp_a_timer matches 32 run playsound minecraft:entity.warden.sonic_boom master @a[distance=..12] ~ ~ ~ 1 1 1
execute if score @s uhcp_a_timer matches 32 on passengers run kill @s
execute unless score @s uhcp_a_timer matches 32.. run return 0
scoreboard players add @s uhcp_a_tier 1

execute if score @s uhcp_a_tier matches 2 run playsound minecraft:block.sculk_shrieker.shriek master @a[distance=..12] ~ ~ ~ 1 1.25 0.75
particle minecraft:sculk_charge_pop ~ ~ ~ 1.5 1 1.5 0.1 100 normal
particle minecraft:glow_squid_ink ~ ~ ~ 1.5 1 1.5 0.1 10 normal
execute positioned ~ ~1 ~ rotated 0 90 run function uhcp:titans/gigantus/circle_strike/particles
execute as @a[distance=..4,gamemode=survival] run damage @s 4 magic

execute if score @s uhcp_a_tier matches 2 run scoreboard players reset @s uhcp_a_tier

execute if score @s uhcp_a_timer matches 42 run kill @s