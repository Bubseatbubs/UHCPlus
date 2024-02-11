execute at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace glass
playsound block.glass.break master @a[distance=..8] ~ ~ ~ 1 1 0.75
particle block glass ~ ~ ~ 0.5 0.5 0.5 1 50 normal
kill @s