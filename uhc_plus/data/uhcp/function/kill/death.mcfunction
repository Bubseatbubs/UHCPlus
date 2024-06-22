# Run upon player's death
scoreboard players reset @s uhcp_death
tag @s add UHCP_CurrentDeadPlayer
tag @s add UHCP_Died
scoreboard players reset @s uhcp_deathTime

# Run during game
execute if score %game uhcp_initStatus matches 1 run function uhcp:kill/death/during_game

# Situational Checks
execute as @s[tag=UHCP_IsAttackTitan] run function uhcp:consumables/titan_spinal_fluid/reset

# General Effects
gamemode spectator @s
effect clear @s
effect give @s minecraft:night_vision infinite 0 true
scoreboard players reset @s lobby
scoreboard players reset @s patron
scoreboard players reset @s team
scoreboard players reset @s testkit
scoreboard players reset @s top

tag @e remove UHCP_CurrentDeathMarker
tag @s remove UHCP_CurrentDeadPlayer
