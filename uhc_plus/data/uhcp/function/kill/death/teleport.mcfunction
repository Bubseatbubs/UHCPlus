# Teleport player to death marker
execute as @e[tag=UHCP_Death] if score @s uhcp_id = @a[tag=UHCP_Respawned,limit=1] uhcp_id run return run tp @a[tag=UHCP_Respawned,limit=1] @s
