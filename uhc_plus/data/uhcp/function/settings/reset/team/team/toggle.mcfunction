# Turn teams on
execute if score %team_def uhcp_settings matches 1 run return run function uhcp:settings/reset/team/team/on

# Turn teams off
scoreboard players set %team uhcp_settings 0
scoreboard players reset @a team
team empty aqua
team empty blue
team empty dark_aqua
team empty dark_blue
team empty dark_gray
team empty dark_green
team empty dark_purple
team empty dark_red
team empty gold
team empty gray
team empty green
team empty light_purple
team empty red
team empty yellow
execute as @a[gamemode=!creative] run function uhcp:lobby/menu
