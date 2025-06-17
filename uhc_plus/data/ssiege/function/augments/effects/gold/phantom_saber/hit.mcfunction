# Prepare
advancement revoke @s only ssiege:augments/phantom_saber

# Check if prismatic version
execute if score @s uhcp_augment matches 539 run return run function ssiege:augments/effects/prismatic/phantom_saber_ii/hit

# 20% chance to proc follow up
execute store result score @s uhcp_initStatus run random value 0..4
execute unless score @s uhcp_initStatus matches 0 run return fail

# Update flight status
function uhcp:augments/effects/gold/phantomsaber/destination/target
