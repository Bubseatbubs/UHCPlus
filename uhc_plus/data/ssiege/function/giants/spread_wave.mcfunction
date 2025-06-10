# Spread all newly spawned Giants
execute as @e[tag=SSIEGE_NEW_GIANT] at @s run spreadplayers ~ ~ 10 400 false @s

# Remove the temporary tag
tag @e[tag=SSIEGE_NEW_GIANT] remove SSIEGE_NEW_GIANT