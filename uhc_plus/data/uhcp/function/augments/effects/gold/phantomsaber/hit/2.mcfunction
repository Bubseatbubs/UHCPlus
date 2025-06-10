# Prepare
advancement revoke @s only uhcp:augments/phantom_saber/2

# 50% chance to proc follow up
execute store result score @s uhcp_initStatus run random value 0..1
execute unless score @s uhcp_initStatus matches 0 run return fail

# Update flight status
function uhcp:augments/effects/gold/phantomsaber/destination/target
