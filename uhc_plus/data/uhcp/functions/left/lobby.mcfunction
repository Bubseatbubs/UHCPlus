# Move player to lobby
clear @s
effect clear @s
effect give @s minecraft:instant_health 2 5 true
effect give @s minecraft:resistance infinite 5 true
effect give @s minecraft:saturation infinite 255 true
function uhcp:reset/attributes
experience set @s 0 levels
experience set @s 0 points
# --------------- Temp coordinates to lobby
execute in minecraft:overworld run tp @s 7 301 7
# ---------------
gamemode adventure @s
scoreboard players reset @s patron
scoreboard players reset @s team
scoreboard players reset @s testkit
scoreboard players reset @s top
execute unless score @s uhcp_ready = @s uhcp_ready run scoreboard players set @s uhcp_ready 0
function uhcp:titans/reset_bossbar
function uhcp:lobby/menu
execute if score @s uhcp_ready matches 1 run function uhcp:lobby/readyup/cancel
