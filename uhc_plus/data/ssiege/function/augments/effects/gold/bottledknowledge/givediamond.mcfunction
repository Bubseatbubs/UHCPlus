# Give diamond to player who reached new level
give @s minecraft:diamond 1

# Add 1 to counter
scoreboard players add @s xp_level 1

# Particle effect at player location
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 10

# Play sound effect
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.2

# Probably doesn't need to call itself recursively - might be better for player to see diamonds slowly pop up every tick