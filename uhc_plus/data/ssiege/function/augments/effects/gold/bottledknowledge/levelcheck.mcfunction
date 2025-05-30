# Store current XP level in temporary score
execute as @s store result score @s current_level run data get entity @s XpLevel

# Give diamond if current level is higher than stored level
execute as @s if score @s current_level > @s xp_level run function ssiege:augments/effects/gold/bottledknowledge/givediamond
