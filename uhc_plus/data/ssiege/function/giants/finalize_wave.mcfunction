# Spread all newly spawned giants
execute as @e[tag=SSIEGE_NEW_GIANT] at @s run spreadplayers ~ ~ 30 400 false @s

# Remove the temporary tag
tag @e[tag=SSIEGE_NEW_GIANT] remove SSIEGE_NEW_GIANT

forceload remove -1 -1 1 1