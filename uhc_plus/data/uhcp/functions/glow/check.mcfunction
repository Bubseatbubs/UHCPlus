# Check if all-seeing eye
execute at @s if entity @e[distance=..5,predicate=uhcp:ender_eye/all-seeing_eye] run function uhcp:glow/init
execute at @s if entity @e[distance=..5,predicate=uhcp:ender_eye/ras_eye] as @p at @s rotated ~ 0 positioned ^ ^ ^5 run function uhcp:augments/effects/prismatic/gloryofra/ralaser/init
advancement revoke @s only uhcp:ender_eye/throw
