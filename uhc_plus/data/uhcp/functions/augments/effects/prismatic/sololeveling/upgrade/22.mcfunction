# Effect
#give @s minecraft:golden_apple 2
#tellraw @s [{"text":"You ","color":"gray"},{"text":"leveled up","color":"gold"},{"text":"! You gained ","color":"gray"},{"text":"health","color":"white"},{"text":".","color":"gray"}]

# Initialize upgrade
#function uhcp:augments/effects/prismatic/sololeveling/upgrade/init

# Temporarily added while the initialization is disabled (required)
scoreboard players add @s uhcp_a_tier 1

# Revoke advancement
advancement revoke @s only uhcp:augments/solo_level/upgrade/22
