# Spread all newly spawned Giants
# execute as @e[tag=SSIEGE_NEW_GIANT] at @s run spreadplayers ~ ~ 10 200 false @s
execute at @s run spreadplayers ~ ~ 10 200 false @e[tag=SSIEGE_NEW_GIANT]

# Not sure if this part works lmao
execute as @e[tag=SSIEGE_sniffer] positioned over motion_blocking run spreadplayers ~ ~ 10 150 false @e[tag=SSIEGE_NEW_GIANT,distance=..40]
execute as @e[tag=SSIEGE_sniffer] positioned over motion_blocking run spreadplayers ~ ~ 10 150 false @e[tag=SSIEGE_NEW_GIANT,distance=..40]


# Remove the temporary tag
tag @e[tag=SSIEGE_NEW_GIANT] remove SSIEGE_NEW_GIANT