give @s experience_bottle 20
loot give @s loot ssiege:soulshard

# max level reached
scoreboard objectives add max_level_achieved dummy

# current level/counter
scoreboard objectives add current_level dummy

execute as @s store result score @s current_level run data get entity @s XpLevel

scoreboard players set @s max_level_achieved 4