# Macro function to spawn particles at pos2 coordinates
# Called with storage data containing pos2_x, pos2_y, pos2_z

$execute positioned $(pos2_x) $(pos2_y) $(pos2_z) run particle minecraft:portal ~ ~0.5 ~ 0.3 0.5 0.3 0.1 5 force
$execute positioned $(pos2_x) $(pos2_y) $(pos2_z) run particle minecraft:end_rod ~ ~0.5 ~ 0.2 0.3 0.2 0.02 2 force