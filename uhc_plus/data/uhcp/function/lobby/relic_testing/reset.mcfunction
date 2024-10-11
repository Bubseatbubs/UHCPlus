tag @s remove UHCP_RelicTestingChamber
tag @s remove UHCP_SoulflameEmbrace
scoreboard players reset @s uhcp_lobby_item

tag @s add UHCP_DisableReset
item replace entity @s container.3 with minecraft:air
item replace entity @s container.4 with minecraft:air
item replace entity @s container.5 with minecraft:air
tag @s remove UHCP_DisableReset
