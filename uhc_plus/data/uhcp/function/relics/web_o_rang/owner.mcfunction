# On owner
execute as @a[gamemode=!spectator,sort=nearest] if score @s uhcp_id = @n[tag=UHCP_CurrentSlinger] uhcp_id run return run tag @s add UHCP_Owner
