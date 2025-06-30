# Kill associated Prop Hunt block
execute as @e[tag=UHCP_Prop] if score @s uhcp_id = @a[tag=UHCP_Owner,limit=1] uhcp_id run return run kill @s
