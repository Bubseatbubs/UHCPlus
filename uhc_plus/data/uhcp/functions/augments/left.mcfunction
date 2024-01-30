# Runs if players left during augment selection
gamemode survival @s
bossbar set minecraft:uhcp_augment players
kill @e[tag=UHCP_Lock]

effect clear @s
effect give @s speed 15 0 false
effect give @s resistance 120 4 false
effect give @s haste infinite 0 true

# Initialize augment
function uhcp:augments/autoselect
execute at @s run function uhcp:augments/initializeaugments

# Boots Effect (from UHC Pack)
execute at @s run function uhcp:augments/left/boots

# Finish
execute at @s run forceload remove ~ ~
scoreboard players reset @s uhcp_a_leave
