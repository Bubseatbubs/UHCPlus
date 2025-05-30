give @s experience_bottle 10
# last checked level/counter
scoreboard objectives add xp_level dummy
# current level
scoreboard objectives add current_level dummy

execute as @s store result score @s xp_level run data get entity @s XpLevel
