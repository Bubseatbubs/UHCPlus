# Validate players whom may use /trigger top
scoreboard players reset @a[gamemode=!survival] top
scoreboard players reset @a[predicate=!uhcp:dimensions/minecraft] top
execute as @a[scores={top=1..}] at @s run function uhcp:top/check
