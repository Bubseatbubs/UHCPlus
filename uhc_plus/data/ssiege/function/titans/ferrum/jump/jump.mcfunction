tp @s ~ ~1.25 ~
scoreboard players reset @s uhcp_timer
attribute @s minecraft:gravity modifier add uhcp:gravity_globe -0.7 add_value
particle minecraft:gust_emitter_large ~ ~ ~ 0.25 0.25 0.25 0.1 3 normal
playsound minecraft:entity.breeze.jump master @a[distance=..16] ~ ~ ~ 1 1 1
playsound minecraft:entity.elder_guardian.curse master @a[distance=..16] ~ ~ ~ 1 1 1
execute on target at @s run function uhcp:titans/ferrum/jump/indicator
data modify entity @s Motion[1] set value 6.5d
tag @s add UHCP_IsJumping
