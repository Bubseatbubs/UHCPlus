# Search for owner
execute as @a[predicate=uhcp:augments/phantom_saber,gamemode=survival] if score @s uhcp_id = @e[tag=UHCP_CurrentPhantom,limit=1] uhcp_id run return run tag @s add UHCP_Owner

# Kill Phantom Saber and destination marker
function uhcp:augments/effects/gold/phantomsaber/update/kill
kill @s
