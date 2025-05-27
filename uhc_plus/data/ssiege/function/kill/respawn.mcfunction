# Reset player's death timer
tag @s remove SSIEGE_dead
scoreboard players set @s ssiege_death_timer -1
scoreboard players set @s uhcp_death 0

# TODO: TP player back to base instead
tp @s 0 80 0

effect give @s resistance 5 4 true
gamemode survival @s

# Re-apply any permanent augment effects
# Reset any once-per-life augments

tellraw @s {text: "You've respawned!"}