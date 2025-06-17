# Check teleportation for red team players
# If player on red team is near pos1, teleport to pos2
# If player on red team is near pos2, teleport to pos1

# Check for players near pos1 and teleport to pos2
execute positioned ~ ~ ~ run function ssiege:augments/effects/gold/gates/portal/teleport_pos1_to_pos2_red with storage ssiege:temp

# Check for players near pos2 and teleport to pos1  
execute positioned ~ ~ ~ run function ssiege:augments/effects/gold/gates/portal/teleport_pos2_to_pos1_red with storage ssiege:temp