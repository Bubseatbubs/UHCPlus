tp @s ~ ~0.1 ~
playsound minecraft:entity.breeze.jump master @a[distance=..16] ~ ~ ~ 1 1 1
playsound minecraft:entity.elder_guardian.curse master @a[distance=..16] ~ ~ ~ 1 1 1
data modify entity @s Motion[1] set value 3.5d
tag @s add UHCP_IsJumping
