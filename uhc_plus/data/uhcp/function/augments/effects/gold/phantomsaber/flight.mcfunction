# Persistent effects
particle minecraft:end_rod ~ ~ ~ 0.01 0.01 0.01 0.01 1 normal

# Search for destination marker
execute as @e[tag=UHCP_PhantomDestination] if score @s uhcp_id = @n[tag=UHCP_CurrentPhantom] uhcp_id run return run function uhcp:augments/effects/gold/phantomsaber/flight/destination
tag @s remove UHCP_PhantomFly
tag @s remove UHCP_CurrentPhantom
tag @a remove UHCP_Owner
