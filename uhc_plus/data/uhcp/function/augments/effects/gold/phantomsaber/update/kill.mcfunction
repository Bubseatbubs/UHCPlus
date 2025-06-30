# Kill destination marker
execute as @e[tag=UHCP_PhantomDestination] if score @s uhcp_id = @e[tag=UHCP_CurrentPhantom,limit=1] uhcp_id run return run kill @s
