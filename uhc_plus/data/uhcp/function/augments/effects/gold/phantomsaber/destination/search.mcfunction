# Search for Phantom Saber
execute as @e[tag=UHCP_PhantomSaber] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id run return run function uhcp:augments/effects/gold/phantomsaber/destination/fly
