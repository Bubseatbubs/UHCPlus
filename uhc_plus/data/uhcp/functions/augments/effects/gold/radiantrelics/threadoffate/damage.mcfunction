execute if entity @s[tag=UHCP_Hit] run return 0

damage @s 1 magic by @a[tag=UHCP_isDashing,sort=nearest,limit=1]
effect give @a[tag=UHCP_isDashing,sort=nearest,limit=1] minecraft:regeneration 1 2 true
tag @s add UHCP_Hit