give @s experience_bottle 20

# max level reached
scoreboard objectives add max_level_achieved dummy

# current level/counter
scoreboard objectives add current_level dummy

execute as @s store result score @s current_level run data get entity @s XpLevel
execute as @s store result score @s max_level_achieved run data get entity @s XpLevel
