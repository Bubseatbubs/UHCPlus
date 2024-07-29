# Restore player's death location if necessary
tag @s add UHCP_Respawned
execute as @e[tag=UHCP_Death] if score @s uhcp_id = @a[tag=UHCP_Respawned,limit=1] uhcp_id run tp @a[tag=UHCP_Respawned,limit=1] @s
tag @s remove UHCP_Respawned
