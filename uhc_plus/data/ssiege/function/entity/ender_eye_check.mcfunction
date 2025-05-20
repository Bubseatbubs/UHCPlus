# Check type of ender eye thrown
advancement revoke @s only uhcp:throw_ender_eye
execute at @s if entity @e[distance=..5,predicate=uhcp:ender_eye/all-seeing_eye] run return run function uhcp:consumables/all-seeing_eye/init
execute at @s if entity @e[distance=..5,predicate=uhcp:ender_eye/ras_eye] rotated ~ 0 positioned ^ ^ ^5 run function uhcp:consumables/ras_gaze/init
