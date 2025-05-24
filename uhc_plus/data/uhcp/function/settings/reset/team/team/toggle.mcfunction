# Turn teams on
execute if score %team_def_uhcp uhcp_settings matches 1 run return run function uhcp:settings/reset/team/team/on

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

scoreboard players set @a uhcp_leave 1000
item replace entity @a[gamemode=!creative] container.0 with minecraft:air
scoreboard players reset @a uhcp_leave
