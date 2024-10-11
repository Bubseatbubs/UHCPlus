scoreboard players add @s uhcp_lobby_item 1
scoreboard players set @s[scores={uhcp_lobby_item=19..}] uhcp_lobby_item 10
playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 1 1

tag @s add UHCP_DisableReset
function uhcp:lobby/menu/relic_testing
tag @s remove UHCP_DisableReset
