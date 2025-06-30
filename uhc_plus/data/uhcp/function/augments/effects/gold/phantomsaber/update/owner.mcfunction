# As owner
execute as @s[x_rotation=-90..-75] run return run function uhcp:augments/effects/gold/phantomsaber/update/upward
tp @e[tag=UHCP_CurrentPhantom,limit=1] ~ ~2.5 ~ ~-45 90
tag @s remove UHCP_Owner
