# Teleport blue team players from pos2 to pos1
# Check if player is near pos2 and not on cooldown, then teleport to pos1

# Check for blue team players near pos2 (within 2 blocks)
$execute positioned $(pos2_x) $(pos2_y) $(pos2_z) as @a[team=blue,distance=..1] unless score @s uhcp_gate_time > %time uhcp_game_time run function ssiege:augments/effects/gold/gates/portal/do_teleport_to_pos1 with storage ssiege:temp