scoreboard players set stage status 2
# Disabling the datapack caused unnecessary reload - Bubson
# datapack disable "file/pregen"
# Pregen is still enabled but I added this command to stop players who are pregenning
execute as @a[tag=WorldGen] run function pregen:stop