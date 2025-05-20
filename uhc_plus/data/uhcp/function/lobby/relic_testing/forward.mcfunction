scoreboard players add @s uhcp_lobby_item 1
scoreboard players set @s[scores={uhcp_lobby_item=19..}] uhcp_lobby_item 10
execute at @s run playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 1 1

scoreboard players set @s uhcp_leave 1000
function uhcp:lobby/menu/relic_testing
scoreboard players reset @s uhcp_leave
