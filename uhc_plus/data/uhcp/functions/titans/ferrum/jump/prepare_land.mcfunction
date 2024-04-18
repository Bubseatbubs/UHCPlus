data modify entity @s Pos[0] set from entity @e[tag=UHCP_FerrumLanding,sort=nearest,limit=1] Pos[0]
data modify entity @s Pos[2] set from entity @e[tag=UHCP_FerrumLanding,sort=nearest,limit=1] Pos[2]
attribute @s generic.gravity modifier remove 95c5d624-7157-4cee-95eb-0d079cbfec99
attribute @s generic.gravity modifier add 95c5d624-7157-4cee-95eb-0d079cbfec99 "" 0.5 add_value
data merge entity @s {Motion:[0.0,-0.5,0.0]}