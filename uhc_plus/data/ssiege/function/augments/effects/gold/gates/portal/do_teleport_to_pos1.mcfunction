# Execute teleportation to pos1
# Play pearl sound, teleport player, set cooldown

# Play ender pearl teleport sound
playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1

# Teleport player to pos1 coordinates
$tp @s $(pos1_x) $(pos1_y) $(pos1_z)

# Set 3 second cooldown (60 ticks) - add 60 to current game time
scoreboard players operation @s uhcp_gate_time = %time uhcp_game_time
scoreboard players add @s uhcp_gate_time 60

# Play teleport arrival sound at destination
$execute positioned $(pos1_x) $(pos1_y) $(pos1_z) run playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1.2