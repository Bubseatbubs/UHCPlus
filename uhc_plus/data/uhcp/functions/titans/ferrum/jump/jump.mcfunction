tp @s ~ ~1.25 ~
scoreboard players reset @s uhcp_timer
attribute @s minecraft:generic.gravity modifier add 95c5d624-7157-4cee-95eb-0d079cbfec99 "" -0.7 add_value
particle minecraft:gust_emitter_large ~ ~ ~ 0.25 0.25 0.25 0.1 3 normal
playsound minecraft:entity.breeze.jump master @a[distance=..16] ~ ~ ~ 1 1 1
playsound minecraft:entity.elder_guardian.curse master @a[distance=..16] ~ ~ ~ 1 1 1
execute on target at @s run function uhcp:titans/ferrum/jump/indicator
data merge entity @s {Motion:[0.0,6.5,0.0]}
tag @s add UHCP_IsJumping