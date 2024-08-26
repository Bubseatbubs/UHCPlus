# Find cooldown from marker
execute as @e[tag=UHCP_HuntingCall] if score @s uhcp_id = @a[tag=UHCP_Hunter,limit=1] uhcp_initStatus run return run function uhcp:augments/effects/gold/huntingcall/cooldown
return -1
