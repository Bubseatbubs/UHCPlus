# Spread all newly spawned giants
execute as @e[tag=SSIEGE_NEW_GIANT] at @s run spreadplayers ~ ~ 30 400 false @s

# Remove the temporary tag
tag @e[tag=SSIEGE_NEW_GIANT] remove SSIEGE_NEW_GIANT
execute if score %encounter ssiege_current_encounter matches 15 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"dehua replaced the Giants with "},{"text":"Pandas","bold":true,"color":"white"},{"text":"!"}]

forceload remove -1 -1 1 1