effect clear @s minecraft:resistance
damage @s 34 minecraft:generic
effect give @s minecraft:resistance 120 6 true

particle minecraft:small_flame ~ ~ ~ 0.5 0.5 0.5 0.1 100 normal
playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 1 1
playsound minecraft:entity.witch.celebrate master @s ~ ~ ~ 1 0.5 1

scoreboard players set @s uhcp_game_time 1200
