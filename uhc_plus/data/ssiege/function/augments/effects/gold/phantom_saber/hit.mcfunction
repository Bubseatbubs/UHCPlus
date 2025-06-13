# Prepare
advancement revoke @s only ssiege:phantom_saber

# 20% chance to proc follow up
execute store result score @s uhcp_initStatus run random value 0..4
execute unless score @s uhcp_initStatus matches 0 run return fail

# Update flight status
function uhcp:augments/effects/gold/phantomsaber/destination/target
