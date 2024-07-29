# Augment logic
title @a title {"text":"GO!","color":"gold"}

execute as @a at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 1 1 1
scoreboard players set %augment_countdown uhcp_game_time 0
scoreboard players set %time uhcp_initStatus 1
gamemode survival @a[tag=!UHCP_Spectator]
execute as @a[tag=!UHCP_Spectator] at @s if biome ~ ~-1 ~ #uhcp:snowy run loot replace entity @s armor.feet loot uhcp:snow_boots
effect give @a[tag=!UHCP_Spectator] minecraft:speed 15 0 false
effect give @a[tag=!UHCP_Spectator] minecraft:resistance 120 4 false
execute as @a[tag=!UHCP_Spectator] run attribute @s minecraft:player.block_break_speed modifier add uhcp:block_break_speed 1.2 add_multiplied_total
