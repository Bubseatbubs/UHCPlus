# Kill associated Prop Hunt block
execute as @e[tag=UHCP_Prop] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id run return run kill @s
