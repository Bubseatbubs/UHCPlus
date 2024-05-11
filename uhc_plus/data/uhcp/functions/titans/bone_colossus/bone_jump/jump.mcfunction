tp @s ~ ~0.1 ~
playsound minecraft:entity.breeze.jump master @a[distance=..16] ~ ~ ~ 1 1 1
playsound minecraft:entity.elder_guardian.curse master @a[distance=..16] ~ ~ ~ 1 1 1
data merge entity @s {Motion:[0.0,3.5,0.0]}
tag @s add UHCP_IsJumping