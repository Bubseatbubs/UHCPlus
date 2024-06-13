# Turn patron augments on
execute if score %patrons_def uhcp_settings matches 1 run return run function uhcp:settings/reset/patrons/on

# Turn patron augments off
scoreboard players set %patrons uhcp_settings 0
scoreboard players reset @a patron
execute as @a[gamemode=!creative] run function uhcp:lobby/menu
