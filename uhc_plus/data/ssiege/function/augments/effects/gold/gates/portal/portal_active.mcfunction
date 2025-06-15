# Portal Active Phase - Runs when marker age > 3 seconds

# Play end portal opening sound (only once when portal first opens)
execute as @s if score %time uhcp_game_time matches 1.. run scoreboard players operation #temp uhcp_game_time = %time uhcp_game_time
execute as @s if score %time uhcp_game_time matches 1.. run scoreboard players operation #temp uhcp_game_time -= @s uhcp_game_time
execute as @s if score #temp uhcp_game_time matches 60 run playsound minecraft:block.end_portal.spawn master @a[distance=..32] ~ ~ ~ 1 1

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
execute positioned ~ ~ ~ run function ssiege:augments/effects/gold/gates/portal/spawn_particles_pos1

# Summon portal particles at pos2
execute positioned ~ ~ ~ run function ssiege:augments/effects/gold/gates/portal/spawn_particles_pos2

# Check for teleportation - same team players near pos1 teleport to pos2
execute as @s[team=UHCP_TeamRed] positioned ~ ~ ~ run function ssiege:augments/effects/gold/gates/portal/check_teleport_red
execute as @s[team=UHCP_TeamBlue] positioned ~ ~ ~ run function ssiege:augments/effects/gold/gates/portal/check_teleport_blue