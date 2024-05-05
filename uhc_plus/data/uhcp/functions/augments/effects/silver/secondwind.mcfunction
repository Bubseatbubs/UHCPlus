effect give @s minecraft:instant_health 1 10 true
execute at @s run playsound minecraft:block.brewing_stand.brew master @s ~ ~ ~ 1 1 1
particle happy_villager ~ ~ ~ 1 1 1 0.5 100 normal

scoreboard players set @s uhcp_game_time -1
