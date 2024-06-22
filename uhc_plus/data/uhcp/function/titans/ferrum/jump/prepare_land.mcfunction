data modify entity @s Pos[0] set from entity @n[tag=UHCP_FerrumLanding] Pos[0]
data modify entity @s Pos[2] set from entity @n[tag=UHCP_FerrumLanding] Pos[2]
attribute @s minecraft:generic.gravity modifier remove uhcp:gravity_globe
attribute @s minecraft:generic.gravity modifier add uhcp:gravity_globe 0.5 add_value
data modify entity @s Motion[1] set value -0.5d
