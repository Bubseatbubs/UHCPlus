# Kills the mob in a safe and sanitized manner (AKA without showing players their death)
# Though mainly used for summons, this function is also used to dispose of several other types of entities
execute at @s run particle poof ~ ~ ~ 1 1 1 0.1 25 normal
execute at @s run tp @s ~ ~-4096 ~
effect give @s invisibility 10 1 true
data merge entity @s {Glowing:0b,Silent:1b,CustomNameVisible:0b,Size:0,Health:0f,DeathTime:18s}
kill @s