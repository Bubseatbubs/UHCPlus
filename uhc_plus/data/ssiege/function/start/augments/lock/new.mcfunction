# New armor stand
data merge entity @s {Invulnerable:1b,Marker:1b,Invisible:1b}
tag @s add UHCP_Lock
ride @a[tag=UHCP_CurrentLock,limit=1] mount @s
