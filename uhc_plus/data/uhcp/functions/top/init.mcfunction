bossbar set uhcp_topcd players @s
playsound block.beacon.activate master @s ~ ~ ~ 1 1 1
tag @s add uhcp_isTeleporting
tellraw @s {"text":"Teleporting to top...","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}}

scoreboard players reset @s top