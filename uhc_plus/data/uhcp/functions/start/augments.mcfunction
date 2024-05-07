# Augment logic
title @a title [{"text":"Aug","color":"#2c50f2","bold":true},{"text":"men","color":"#3D8BFF"},{"text":"t Se","color":"#59B7FF"},{"text":"lec","color":"#85EFFF"},{"text":"tion","color":"#B8FFF1"}]
tellraw @a[tag=!UHCP_Spectator] [{"text":"[","color":"white"},{"text":"Aug","color":"#2c50f2"},{"text":"men","color":"#3D8BFF"},{"text":"t Se","color":"#59B7FF"},{"text":"lec","color":"#85EFFF"},{"text":"tion","color":"#B8FFF1"},{"text":"]\n","color":"white"},{"text":"Choose one of three augments from your inventory.\nTo choose an augment, open your inventory and\nclick on the augment you want.","color":"gray"}]

effect give @a[tag=!UHCP_Spectator] minecraft:resistance infinite 5 true
effect give @a[tag=!UHCP_Spectator] minecraft:saturation infinite 255 true
effect give @a[tag=!UHCP_Spectator] minecraft:weakness infinite 4 true

bossbar set uhcp:augment players @a

execute as @a[tag=!UHCP_Spectator] run function uhcp:start/augments/player_specific
