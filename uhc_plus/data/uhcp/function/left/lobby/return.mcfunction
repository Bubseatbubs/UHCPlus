# Move player to lobby center
spreadplayers ~ ~ 0 1.5 under 299 false @s

# Reset lobby state
tag @s remove UHCP_RelicTestingChamber
tag @s remove UHCP_SoulflameEmbrace

# Empty special item slots
execute unless score @s uhcp_lobby_item matches 0.. run return fail

item replace entity @s armor.head with minecraft:air
item replace entity @s container.3 with minecraft:air
item replace entity @s container.4 with minecraft:air
item replace entity @s container.5 with minecraft:air

scoreboard players reset @s uhcp_lobby_item
