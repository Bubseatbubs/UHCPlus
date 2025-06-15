# Macro function to spawn particles at pos1 coordinates
# Called with storage data containing pos1_x, pos1_y, pos1_z

$execute positioned $(pos1_x) $(pos1_y) $(pos1_z) run particle minecraft:portal ~ ~0.5 ~ 0.3 0.5 0.3 0.1 5 force
$execute positioned $(pos1_x) $(pos1_y) $(pos1_z) run particle minecraft:end_rod ~ ~0.5 ~ 0.2 0.3 0.2 0.02 2 force