# Kill destination marker
execute as @e[tag=UHCP_PhantomDestination] if score @s uhcp_id = @n[tag=UHCP_CurrentPhantom] uhcp_id run return run kill @s
