# Reset player's death timer
tag @s remove SSIEGE_dead
scoreboard players set @s ssiege_death_timer -1
scoreboard players reset @s uhcp_game_display

# Re-apply any permanent augment effects
# Reset any once-per-life augments

# Adrenal Surge
execute if score @s uhcp_augment matches 501 run function ssiege:augments/effects/prismatic/adrenal_surge/reset

# Res Tier Player
execute if score @s uhcp_augment matches 502 run effect give @s resistance infinite 0 true

# Poseidon's Blessing
execute if score @s uhcp_augment matches 347 run effect give @s dolphins_grace infinite 0 true

# Center of Attention
execute if score @s uhcp_augment matches 510 run effect give @s glowing infinite

# The Hare
execute if score @s uhcp_augment matches 552 run effect give @s jump_boost infinite 1 true

# Infernus Blessing
execute as @s[tag=SSIEGE_InfernusBlessing] run effect give @s fire_resistance infinite 0 true

# Infernus Blessing
tag @s remove SSIEGE_hit_by_Infernus_Blessing

# Send player back to their home base
execute if entity @s[team=blue] run function ssiege:bases/teleport_blue
execute if entity @s[team=red] run function ssiege:bases/teleport_red

effect give @s resistance 10 4 true
effect give @s night_vision infinite 0 true
title @s clear
gamemode survival @s

tellraw @s {text: "You've respawned!",color:"green"}
function uhcp:start/augments/sounds