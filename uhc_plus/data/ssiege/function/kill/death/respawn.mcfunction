# Reset player's death timer
tag @s remove SSIEGE_dead
scoreboard players set @s ssiege_death_timer -1
scoreboard players set @s uhcp_death 0

# Send player back to their home base
execute if entity @s[team=blue] run function ssiege:bases/teleport_blue
execute if entity @s[team=red] run function ssiege:bases/teleport_red

effect give @s resistance 5 4 true
effect give @s night_vision infinite 0 true
gamemode survival @s

# Re-apply any permanent augment effects
# Reset any once-per-life augments

tellraw @s {text: "You've respawned!"}