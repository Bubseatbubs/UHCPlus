# Majority Encounter
execute as @a[gamemode=survival] run attribute @s safe_fall_distance base set 100
tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"Majority made everyone "},{"text":"immune to fall damage","bold":true,"color":"green"},{"text":"!"}]