scoreboard players remove @s uhcp_lobby_item 1
scoreboard players set @s[scores={uhcp_lobby_item=..9}] uhcp_lobby_item 18
playsound minecraft:block.piston.contract master @s ~ ~ ~ 1 1 1

tag @s add UHCP_DisableReset
function uhcp:lobby/menu/relic_testing
tag @s remove UHCP_DisableReset
