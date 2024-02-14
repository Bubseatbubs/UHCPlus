# Force item to be picked up
data modify entity @e[tag=UHCP_BeingPickedUp,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=UHCP_BeingPickedUp,limit=1] PickupDelay set value 0s
tp @e[tag=UHCP_BeingPickedUp] @s
return 1
