# Spawn portal particles at pos2
# Use storage data to position particles

execute positioned ~ ~ ~ run function ssiege:augments/effects/gold/gates/portal/move_to_pos2 with storage ssiege:temp

# This helper function will be called with the macro
# move_to_pos2.mcfunction content:
# $execute positioned $(pos2_x) $(pos2_y) $(pos2_z) run particle minecraft:portal ~ ~0.5 ~ 0.3 0.5 0.3 0.1 5 force
# $execute positioned $(pos2_x) $(pos2_y) $(pos2_z) run particle minecraft:end_rod ~ ~0.5 ~ 0.2 0.3 0.2 0.02 2 force