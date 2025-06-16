# Initialize the raycast at player's eye level, rotated 90 degrees upward

# Set maximum distance
scoreboard players set @s uhcp_initStatus 200

#scoreboard objectives add laser_drop dummy

# Start raycast at eye level, angled 25 degrees upward
execute positioned ~ ~2.2 ~ rotated ~ -60 positioned ^ ^ ^ run function ssiege:augments/effects/gold/gates/laser/laser_raycast