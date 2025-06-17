# 40% chance to proc follow up
execute store result score @s uhcp_initStatus run random value 0..4
execute unless score @s uhcp_initStatus matches ..1 run return fail

# Update flight status
function uhcp:augments/effects/gold/phantomsaber/destination/target
