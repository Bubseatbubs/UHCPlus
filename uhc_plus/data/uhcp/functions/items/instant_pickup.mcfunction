tag @s add UHCP_BeingPickedUp
execute at @s on origin unless entity @s[scores={uhcp_death=1..}] run data modify entity @e[tag=UHCP_BeingPickedUp,sort=nearest,limit=1] Owner set from entity @s UUID
data modify entity @s PickupDelay set value 0s
execute at @s on origin run tp @e[tag=UHCP_BeingPickedUp] @s
tag @s remove UHCP_BeingPickedUp