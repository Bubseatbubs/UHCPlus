# Give diamond to player who reached new level
loot give @s loot ssiege:soulshard

# Adds 1 to max_level_achieved
scoreboard players add @s max_level_achieved 3

# Particle effect at player location
execute at @s run particle glow_squid_ink ~ ~1 ~ 0.5 0.5 0.5 0 10

# Play sound effect
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.2
