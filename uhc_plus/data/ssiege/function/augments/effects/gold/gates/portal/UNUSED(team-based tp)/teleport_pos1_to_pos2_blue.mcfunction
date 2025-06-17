# Teleport blue team players from pos1 to pos2
# Check if player is near pos1 and not on cooldown, then teleport to pos2

# Check for blue team players near pos1 (within 2 blocks)
$execute positioned $(pos1_x) $(pos1_y) $(pos1_z) as @a[team=blue,distance=..1] unless score @s uhcp_gate_time > %time uhcp_game_time run function ssiege:augments/effects/gold/gates/portal/do_teleport_to_pos2 with storage ssiege:temp