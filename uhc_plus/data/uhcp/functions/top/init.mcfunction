bossbar set uhcp_topcharge players @s
playsound block.beacon.activate master @s ~ ~ ~ 1 1 1
scoreboard players set @s uhcp_topCD 60
tag @s add uhcp_isTeleporting
tellraw @s {"text":"Teleporting to top...","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}}

scoreboard players reset @s top