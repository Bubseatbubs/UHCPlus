# Reset player's death timer
tag @s remove SSIEGE_dead
scoreboard players set @s ssiege_death_timer -1

# Send player back to their home base
execute if entity @s[team=blue] run function ssiege:bases/teleport_blue
execute if entity @s[team=red] run function ssiege:bases/teleport_red

effect give @s resistance 10 4 true
effect give @s night_vision infinite 0 true
title @s clear
gamemode survival @s

# Re-apply any permanent augment effects
# Reset any once-per-life augments

# Poseidon's Blessing
execute if score @s uhcp_augment matches 47 run effect give @s dolphins_grace infinite 0 true

# Infernus Blessing
tag @s remove SSIEGE_hit_by_Infernus_Blessing

tellraw @s {text: "You've respawned!"}