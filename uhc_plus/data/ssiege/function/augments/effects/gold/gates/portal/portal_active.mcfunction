# Portal Active Phase - Runs when marker age > 3 seconds

# Summon particles every tick at pos1 and pos2
# Get pos1 coordinates from scoreboard and convert to world coordinates
execute store result storage ssiege:temp pos1_x int 1 run scoreboard players get @s ssiege_posx
execute store result storage ssiege:temp pos1_y int 1 run scoreboard players get @s ssiege_posy
execute store result storage ssiege:temp pos1_z int 1 run scoreboard players get @s ssiege_posz

# Get pos2 coordinates from scoreboard and convert to world coordinates
execute store result storage ssiege:temp pos2_x int 1 run scoreboard players get @s ssiege_posx2
execute store result storage ssiege:temp pos2_y int 1 run scoreboard players get @s ssiege_posy2
execute store result storage ssiege:temp pos2_z int 1 run scoreboard players get @s ssiege_posz2

# Summon portal particles at pos1
execute positioned ~ ~ ~ run function ssiege:augments/effects/gold/gates/portal/spawn_particles_pos1 with storage ssiege:temp

# Summon portal particles at pos2
execute positioned ~ ~ ~ run function ssiege:augments/effects/gold/gates/portal/spawn_particles_pos2 with storage ssiege:temp

# Play sounds at pos2
execute positioned ~ ~ ~ run function ssiege:augments/effects/gold/gates/portal/playsound_pos2 with storage ssiege:temp

# Check for players near pos1 and teleport to pos2
execute positioned ~ ~ ~ run function ssiege:augments/effects/gold/gates/portal/check_teleport_pos1_to_pos2 with storage ssiege:temp

# Check for players near pos2 and teleport to pos1
execute positioned ~ ~ ~ run function ssiege:augments/effects/gold/gates/portal/check_teleport_pos2_to_pos1 with storage ssiege:temp

#UNUSED - team based tp
# Check for teleportation - same team players near pos1 teleport to pos2
#execute as @s[tag=UHCP_TeamRed] positioned ~ ~ ~ run function ssiege:augments/effects/gold/gates/portal/check_teleport_red
#execute as @s[tag=UHCP_TeamBlue] positioned ~ ~ ~ run function ssiege:augments/effects/gold/gates/portal/check_teleport_blue