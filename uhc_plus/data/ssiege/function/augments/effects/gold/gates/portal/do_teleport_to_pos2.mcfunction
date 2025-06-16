# Execute teleportation to pos2
# Play pearl sound, teleport player, set cooldown

# Play ender pearl teleport sound
playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1

# Teleport player to pos2 coordinates
$tp @s $(pos2_x) $(pos2_y) $(pos2_z)

# Set 3 second cooldown (60 ticks) - add 60 to current game time
scoreboard players operation @s uhcp_gate_time = %time uhcp_game_time
scoreboard players add @s uhcp_gate_time 60

# Play teleport arrival sound at destination
$execute positioned $(pos2_x) $(pos2_y) $(pos2_z) run playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1.2