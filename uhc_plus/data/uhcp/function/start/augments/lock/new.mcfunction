# New armor stand
data merge entity @s {Invulnerable:true,Marker:true,Invisible:true,Tags:["UHCP_Lock"]}
ride @a[tag=UHCP_CurrentLock,limit=1] mount @s
