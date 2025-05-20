scoreboard players remove @s uhcp_lobby_item 1
scoreboard players set @s[scores={uhcp_lobby_item=..9}] uhcp_lobby_item 18
execute at @s run playsound minecraft:block.piston.contract master @s ~ ~ ~ 1 1 1

scoreboard players set @s uhcp_leave 1000
function uhcp:lobby/menu/relic_testing
scoreboard players reset @s uhcp_leave
