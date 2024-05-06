# Augment logic
title @a title {"text":"GO!","color":"gold"}

execute as @a[tag=!UHCP_Spectator] at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 1 1 1
scoreboard players set %augment_countdown uhcp_game_time 0
scoreboard players set %time uhcp_initStatus 1
clear @a[tag=!UHCP_Spectator]
gamemode survival @a[tag=!UHCP_Spectator]
execute as @a[tag=!UHCP_Spectator] at @s if biome ~ ~-1 ~ #uhcp:snowy run loot replace entity @s armor.feet loot uhcp:snow_boots
effect give @a[tag=!UHCP_Spectator] minecraft:speed 15 0 false
effect give @a[tag=!UHCP_Spectator] minecraft:resistance 120 4 false
execute as @a[tag=!UHCP_Spectator] run attribute @s minecraft:player.block_break_speed modifier add 4329681b-2b41-4dc1-8b3a-4a5ebae3c1ce "" 1.2 add_multiplied_total
