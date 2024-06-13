bossbar set uhcp:top_charge players @s
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1 1
scoreboard players set @s uhcp_top_CD 60
tag @s add UHCP_IsTeleporting
tellraw @s {"text":"Teleporting to top...","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}}
summon minecraft:marker ~ ~ ~ {Tags:["UHCP_TopCheck"]}

scoreboard players reset @s top
