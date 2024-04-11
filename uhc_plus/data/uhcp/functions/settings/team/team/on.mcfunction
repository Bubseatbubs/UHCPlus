# Turn teams on
scoreboard players set %team uhcp_settings 1

execute as @a[gamemode=!creative] run function uhcp:lobby/menu
function uhcp:settings/pages/team/1
tellraw @s [{"text":"Teams have been turned "},{"text":"ON","color":"green"},{"text":"."}]
title @a actionbar [{"text":"Game Type set to "},{"text":"TEAM","color":"gold"}]
