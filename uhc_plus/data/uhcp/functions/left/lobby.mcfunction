# Move player to lobby
# Scores
scoreboard players reset @s lobby
scoreboard players reset @s patron
scoreboard players reset @s team
scoreboard players reset @s testkit
scoreboard players reset @s top
scoreboard players reset @s uhcp_augment

# Remove tags
tag @s remove UHCP_ChoosingItem
tag @s remove UHCP_Died

# Lobby menu
execute unless score @s uhcp_ready = @s uhcp_ready run scoreboard players set @s uhcp_ready 0
function uhcp:lobby/menu
execute if score @s uhcp_ready matches 1 run function uhcp:lobby/readyup/cancel


# Manage player
gamemode adventure @s
execute unless items entity @s container.1 *[minecraft:custom_data~{uhcp_lobby:1b}] run clear @s
function uhcp:reset/attributes
effect clear @s
effect give @s minecraft:instant_health 2 5 true
effect give @s minecraft:resistance infinite 5 true
effect give @s minecraft:saturation infinite 255 true
experience set @s 0 levels
experience set @s 0 points
execute in minecraft:overworld run forceload add -96 -96 95 95
execute at @e[tag=UHCP_LobbyOrigin,limit=1] align y run function uhcp:left/lobby/return
execute in minecraft:overworld run forceload remove -96 -96 95 95
