advancement revoke @s only uhcp:consumables/ate_soul_apple

playsound minecraft:entity.allay.death master @s ~ ~ ~ 1 1.5 1
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1
particle soul ~ ~ ~ 1 1 1 0.1 100 normal

execute if score @s uhcp_augment matches 48 run return run function uhcp:augments/effects/gold/soulsiphon/init

effect give @s minecraft:speed 12 0
effect give @s minecraft:absorption 12 0
effect give @s minecraft:regeneration 12 2
xp add @s 8 levels