# Check if all-seeing eye
execute at @s if entity @e[distance=..5,predicate=uhcp:ender_eye/all-seeing_eye] run function uhcp:glow/init
advancement revoke @s only uhcp:ender_eye/throw
