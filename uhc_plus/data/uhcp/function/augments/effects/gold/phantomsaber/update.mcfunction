# Search for owner
tag @s add UHCP_CurrentPhantom
function uhcp:augments/effects/gold/phantomsaber/update/search
execute unless entity @a[tag=UHCP_Owner] run return run tag @s remove UHCP_CurrentPhantom

# Update flight
execute as @s[tag=UHCP_PhantomFly] run return run function uhcp:augments/effects/gold/phantomsaber/flight

# Update
execute as @a[tag=UHCP_Owner,limit=1] at @s run function uhcp:augments/effects/gold/phantomsaber/update/owner
tag @s remove UHCP_CurrentPhantom
