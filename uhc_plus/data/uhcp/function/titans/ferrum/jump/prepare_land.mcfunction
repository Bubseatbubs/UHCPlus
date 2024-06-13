data modify entity @s Pos[0] set from entity @e[tag=UHCP_FerrumLanding,sort=nearest,limit=1] Pos[0]
data modify entity @s Pos[2] set from entity @e[tag=UHCP_FerrumLanding,sort=nearest,limit=1] Pos[2]
attribute @s minecraft:generic.gravity modifier remove uhcp:gravity_globe
attribute @s minecraft:generic.gravity modifier add uhcp:gravity_globe 0.5 add_value
data merge entity @s {Motion:[0.0,-0.5,0.0]}