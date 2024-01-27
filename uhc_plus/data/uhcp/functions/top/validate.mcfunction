# Validate players whom may use /trigger top
scoreboard players reset @a[gamemode=!survival] top
scoreboard players reset @a[predicate=!uhcp:dimensions/minecraft] top
execute as @a[gamemode=survival,predicate=uhcp:dimensions/minecraft] at @s if score @s top matches 1.. run function uhcp:top/check
