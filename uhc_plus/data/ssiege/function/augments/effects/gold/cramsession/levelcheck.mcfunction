# Store current XP level in temporary score
execute as @s store result score @s current_level run data get entity @s XpLevel

# If current XP level > max level, run givediamond
execute as @s if score @s current_level > @s max_level_achieved run function ssiege:augments/effects/gold/cramsession/giveshard

