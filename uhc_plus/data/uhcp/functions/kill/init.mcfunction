# Activates when a player kills another player
advancement revoke @s only uhcp:entity_actions/killed_player
execute store result storage uhcp:settings golden_apple.amount int 1 run scoreboard players get %golden_apples uhcp_settings
function uhcp:kill/give_gapples with storage uhcp:settings golden_apple
function uhcp:augments/effects/killed_player

# Give levels
effect give @s minecraft:speed 12 0
effect give @s minecraft:absorption 12 0
effect give @s minecraft:regeneration 12 2
xp add @s 8 levels
