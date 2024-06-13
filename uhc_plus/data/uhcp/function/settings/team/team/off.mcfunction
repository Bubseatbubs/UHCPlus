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
function uhcp:settings/pages/team
tellraw @s [{"text":"Teams have been turned "},{"text":"OFF","color":"red"},{"text":". It is now a Solo game."}]
title @a actionbar [{"text":"Game type set to "},{"text":"SOLO","color":"aqua"}]
