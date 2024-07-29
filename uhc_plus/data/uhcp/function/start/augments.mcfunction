# Start game with no augments
execute if score %tier uhcp_aug_tier matches -1 run return run function uhcp:start/augments/none

# Augment logic
function uhcp:start/augments/tier/notification
title @a title [{"text":"Aug","color":"#2c50f2","bold":true},{"text":"men","color":"#3D8BFF"},{"text":"t Se","color":"#59B7FF"},{"text":"lec","color":"#85EFFF"},{"text":"tion","color":"#B8FFF1"}]
function uhcp:start/augments/patron

gamemode adventure @a[tag=!UHCP_Spectator]

effect give @a[tag=!UHCP_Spectator] minecraft:resistance infinite 5 true
effect give @a[tag=!UHCP_Spectator] minecraft:saturation infinite 255 true
effect give @a[tag=!UHCP_Spectator] minecraft:weakness infinite 4 true

bossbar set uhcp:augment players @a

scoreboard players set %augment_countdown uhcp_game_time 900
execute as @a[tag=!UHCP_Spectator] run function uhcp:start/augments/selection

execute as @a at @s run function uhcp:start/augments/sounds
