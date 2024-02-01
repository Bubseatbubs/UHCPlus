# Gravity effect (pulls all mobs in)
execute at @s facing entity @e[tag=UHCP_Voltrune,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.125
execute at @s unless block ~ ~ ~ #uhcp:non_solid_blocks run tp @s ^ ^ ^-0.1
execute at @s run particle end_rod ~ ~ ~ 0.002 0.9 0.002 0.1 1 normal
