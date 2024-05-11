advancement revoke @s only uhcp:augments/surface_duty
execute as @s[predicate=uhcp:augments/surface_duty_max] unless block ~ ~-0.5 ~ #uhcp:non_solid_blocks run return 0
particle minecraft:witch ~ ~-1 ~ 0.1 0.1 0.1 0.1 5 normal
tp @s ~ 50 ~
